class RankingNumComments

  def initialize elements
    @elements = elements
  end

  def sorted_elements
    ordered_elements = @elements.sort { |a, b|
      b.number_of_comments <=> a.number_of_comments
    }
    ordered_elements
  end
end
