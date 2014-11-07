class RankingNumVisits

  def initialize elements
    @elements = elements
  end

  def sorted_elements
    ordered_elements = @elements.sort { |a, b|
      b.number_of_visits <=> a.number_of_visits
    }
    ordered_elements
  end
end
