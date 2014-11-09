require_relative './ImdbAdapter.rb'

class MovieSearcher

  attr_accessor :all_movies

  def initialize word_in_title, adapter
    @all_movies = adapter.search_title(word_in_title)
  end

  def movies num
    correct_movies  = 0
    movies_to_play  = []
    almacened_years = []

    i = 0
    while correct_movies < num
      if movie_valid?(all_movies[i], almacened_years)
        movies_to_play.push(gen_data(all_movies[i]))
        almacened_years.push(all_movies[i].year)
        correct_movies += 1
      end
      i += 1
    end

    movies_to_play
  end

  def movie_valid? movie, almacened_years
    has_poster?(movie) && !year_repeat?(movie, almacened_years)
  end

  def has_poster? movie
    movie.poster != nil
  end

  def year_repeat? movie, almacened_years
    almacened_years.include?(movie.year)
  end

  def gen_data movie
    { :poster => movie.poster, :year => movie.year }
  end

end
