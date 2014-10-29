class Grapes_Discount

  def initialize
    @discounter = 0
  end

  def discounter units, price_list, num_bananas
    bananas_to_discount = units / 4
    free_bananas = num_bananas - bananas_to_discount
    if free_bananas < 0
      @discounter = num_bananas * price_list.price(:banana)
    else
      @discounter = bananas_to_discount * price_list.price(:banana)
    end

    @discounter
  end

end
