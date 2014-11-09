class MovieGame

  attr_accessor :movies
  attr_reader   :year_to_game

  def initialize movie_searcher, num_of_movies
    @searcher      = movie_searcher
    @num_of_movies = num_of_movies

    @movies        = set_movie_to_find(@searcher.movies(num_of_movies))
    @year_to_game
  end

  def num_of_movies_to_play
    movies.size
  end

  def set_movie_to_find movies
    random_index = Random.new.rand(0...@num_of_movies)

    movies.each_index do |i|
      if i == random_index
        movies[i][:js] = "alert('Yay!!')"
        @year_to_game  = movies[i][:year]
      else
        movies[i][:js] = "alert('Nop')"
      end
    end
  end

end
