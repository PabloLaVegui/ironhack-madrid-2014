class Oranges_Discount

  def initialize
    @discounter = 0
  end

  def discounter units, price_list
    @discounter = (units - ((units / 3) * 2 + units % 3)) * price_list.price(:oranges)
  end

end
