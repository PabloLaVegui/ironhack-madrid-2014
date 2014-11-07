require_relative '../lib/RankingGenerator'
require_relative '../lib/RankingNumVisits'
require_relative '../lib/RankingNumComments'
require_relative '../lib/RankingALetterInName'
require_relative '../lib/RankingNumWordsInComments'

RSpec.describe "Places Popularity Ranking (RankingGenerator class)" do

  let(:comment_1) {instance_double("Comment", :text => "w1 w2, ww3, w4")}
  let(:comment_2) {instance_double("Comment", :text => "w1 w2")}

  let(:place_1) { instance_double("Place1", :name               => "baab",
                                            :number_of_visits   => 4,
                                            :number_of_comments => [comment_1]) }

  let(:place_2) { instance_double("Place1", :name               => "baabbaaab",
                                            :number_of_visits   => 9,
                                            :number_of_comments => [comment_1, comment_2]) }

  let(:place_3) { instance_double("Place1", :name               => "bbddduy",
                                            :number_of_visits   => 20,
                                            :number_of_comments => [comment_1, comment_2]) }

  # TODO: "change method name number_of_comments to comments"

  let(:ranking_num_of_visits)            { RankingNumVisits.new([place_1, place_2, place_3]) }
  let(:ranking_num_of_comments)          { RankingNumComments.new([place_1, place_2, place_3]) }
  let(:ranking_num_of_a_letter)          { RankingALetterInName.new([place_1, place_2, place_3]) }
  let(:ranking_num_of_words_in_comments) { RankingNumWordsInComments.new([place_1, place_2, place_3]) }

  it "Ranking by number of visits" do
    expect(RankingGenerator.new(ranking_num_of_visits).sorted_elements).to 
    eq([place_3, place_2, place_1])
  end

  it "Ranking by number of comments" do
    expect(RankingGenerator.new(ranking_num_of_comments).sorted_elements).to 
    eq([place_3, place_2, place_1])
  end

  it "Ranking by number of a letters in name" do
    expect(RankingGenerator.new(ranking_num_of_a_letter).sorted_elements).to 
    eq([place_2, place_1, place_3])
  end

  it "Ranking by number of words comments" do
    expect(RankingGenerator.new(ranking_num_of_words_in_comments).sorted_elements).to 
    eq([place_3, place_2, place_1])
  end

end
