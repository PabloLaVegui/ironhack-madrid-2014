class RankingNumWordsInComments

  def initialize elements
    @elements = elements
    @letter = "a"
  end

  def sorted_elements
    ordered_elements = @elements.sort { |a, b|
      b.total_words_in_comments <=> a.total_words_in_comments
    }
    ordered_elements
  end

end
