class Grapes_Discount

  def initialize
    @discounter = 0
  end

  def discounter units_list, price_list
    num_grapes  = units_list[:grapes]
    num_bananas = units_list[:banana]

    if num_grapes > 4 && num_bananas > 0
      bananas_to_discount = num_bananas / 4
      free_bananas = num_bananas - bananas_to_discount

      if free_bananas < 0
        @discounter = num_bananas * price_list.price(:banana)
      else
        @discounter = bananas_to_discount * price_list.price(:banana)
      end
    end

    @discounter
  end

end
