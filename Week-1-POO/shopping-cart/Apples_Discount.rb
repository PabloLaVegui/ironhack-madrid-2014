class Apples_Discount

  def initialize
    @discounter = 0
  end

  def discounter units_list, price_list
    units = units_list[:apples]
    if units >= 2
      @discounter = (units - (units / 2 + units % 2)) * price_list.price(:apples)
    end
  end

end
