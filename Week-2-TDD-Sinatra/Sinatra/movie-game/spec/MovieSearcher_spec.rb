require_relative '../lib/MovieSearcher.rb'
require_relative '../lib/ImdbAdapter.rb'

require 'pry'

RSpec.describe "Movie Searcher" do

  let(:movie_with_poster_1)    { instance_double("Mwp",  {:poster => "test",
                                                        :year   => "1999"}) }

  let(:movie_with_poster_2)    { instance_double("Mwp",  {:poster => "test",
                                                        :year   => "2010"}) }

  let(:movie_without_poster) { instance_double("Mwop", {:poster => nil,
                                                        :year   => "2001"}) }

  let(:movie_w_poster_duplicate_year) { instance_double("Mwpdy", {:poster => "test",
                                                                  :year   => "1999"}) }

  let(:imdb_adapter) { instance_double("ImdbAdapter",
                                       :search_title =>
                                       [movie_with_poster_1, 
                                        movie_without_poster, 
                                        movie_with_poster_2]) }
  let(:imdb_adapter_2) { instance_double("ImdbAdapter",
                                       :search_title =>
                                       [movie_with_poster_1, 
                                        movie_w_poster_duplicate_year, 
                                        movie_with_poster_2]) }

  let(:movie_searcher) { MovieSearcher.new("test", imdb_adapter) }
  let(:movie_searcher_2) { MovieSearcher.new("test", imdb_adapter_2) }


  it "return 2 elements with poster" do
    expect(movie_searcher.movies(2)).to eq([{:poster => "test",
                                             :year   => "1999"},
                                            {:poster => "test",
                                             :year   => "2010"}])
  end

  it "Return all elements with different year" do
    expect(movie_searcher_2.movies(2)).to eq([{:poster => "test",
                                              :year   => "1999"},
                                             {:poster => "test",
                                              :year   => "2010"}])
  end

end
