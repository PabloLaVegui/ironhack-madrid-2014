require 'imdb'
require './Titles_Origin'

class Movie_Rating

  def initialize titles
    @titles = titles
  end

  def print_rating
    @titles.each do |title|
      movie = Imdb::Search.new(title)
      id = movie.movies.first.id
      movie = Imdb::Movie.new(id)
      puts movie.title
      puts movie.rating
    end
  end

end

mr = Movie_Rating.new(Titles_Origin.new.titles)
mr.print_rating
