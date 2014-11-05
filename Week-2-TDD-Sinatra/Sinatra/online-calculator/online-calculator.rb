require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require './OnlineCalculator'

set :port, 3001
set :bind, '0.0.0.0'

get '/' do
  erb :index
end

post '/result' do
  #binding.pry
  @result = OnlineCalculator.new.operate(params)
  erb :result
end

get '/counting' do
  @str = ""
  (1..200).each do |i|
    @str << i.to_s
    @str << '<br/>'
  end

  erb :counting
end
