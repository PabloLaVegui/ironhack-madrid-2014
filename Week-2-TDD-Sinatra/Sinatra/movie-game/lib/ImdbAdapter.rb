require 'imdb'

class ImdbAdapter

  def search_title str
    movies = Imdb::Search.new(str)
    movies.movies
  end

end
