require 'sinatra'
require 'sinatra/reloader' if development?

require_relative './MovieSearcher'
require_relative './ImdbAdapter'
require_relative './MovieGame'


set :port, 3001
set :bind, '0.0.0.0'

get '/' do
  erb :index
end

post '/posters' do
  searcher = MovieSearcher.new(params[:word], ImdbAdapter.new)
  game = MovieGame.new(searcher, 9)
  if game.num_of_movies_to_play < 9
    erb :not_enough_posters_to_play
  else
    @movies      = game.movies
    @year_to_ask = game.year_to_game
    erb :posters
  end

end
