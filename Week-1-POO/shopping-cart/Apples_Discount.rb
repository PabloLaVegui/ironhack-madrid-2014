class Apples_Discount

  def initialize
    @discounter = 0
  end

  def discounter units, price_list
    @discounter = (units - (units / 2 + units % 2)) * price_list.price(:apples)
  end

end
