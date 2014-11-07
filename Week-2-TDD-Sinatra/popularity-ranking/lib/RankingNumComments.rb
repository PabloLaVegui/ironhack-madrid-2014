class RankingNumComments

  def initialize elements
    @elements = elements
  end

  def sorted_elements
    ordered_elements = @elements.sort { |a, b|
      b.comments.size <=> a.comments.size
    }
    ordered_elements
  end
end
