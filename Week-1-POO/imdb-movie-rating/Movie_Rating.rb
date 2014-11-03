require 'imdb'
require './Titles_Origin'
require './Rating_Print'

class Movie_Rating

  def initialize titles
    @titles  = titles
    @ratings = generate_rating_hash
  end

  def print_rating
    Rating_Print.new(@ratings).show
  end

  private

    def generate_rating_hash
      ratings = {}
      @titles.each do |title|
        movie_to_search = Imdb::Search.new(title)
        movie = Imdb::Movie.new(movie_to_search.movies.first.id)
        ratings[title.to_sym] = movie.rating.floor
      end
      ratings
    end

end

mr = Movie_Rating.new(Titles_Origin.new.titles)
mr.print_rating
