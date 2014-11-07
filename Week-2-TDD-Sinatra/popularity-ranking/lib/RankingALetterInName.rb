class RankingALetterInName

  def initialize elements
    @elements = elements
    @letter = "a"
  end

  def sorted_elements
    ordered_elements = @elements.sort { |a, b|
      b.name.count(@letter) <=> a.name.count(@letter)
    }
    ordered_elements
  end

end
