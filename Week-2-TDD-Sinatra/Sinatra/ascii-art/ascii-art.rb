require 'sinatra'
require 'sinatra/reloader' if development?

require './AsciiConverter'

set :port, 4567
set :bind, '0.0.0.0'

get '/ascii/:word' do
  @word = AsciiConverter.new(params[:word]).show
  erb :one_random_word
end
