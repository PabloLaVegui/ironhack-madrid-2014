class Oranges_Discount

  def initialize
    @discounter = 0
  end

  def discounter units_list, price_list
    units = units_list[:oranges]
    if units >= 3
      @discounter = (units - ((units / 3) * 2 + units % 3)) * price_list.price(:oranges)
    end
  end

end
