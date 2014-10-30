require './Apples_Discount'
require './Oranges_Discount'
require './Grapes_Discount'

class Cost_Calculator

  attr_reader :total

  def initialize item_counter, price_list
    @items_with_descount = {
      :apples  => Apples_Discount.new,
      :oranges => Oranges_Discount.new,
      :grapes  => Grapes_Discount.new
    }
    @item_counter = item_counter
    @price_list   = price_list

    @total = total_brute - descount
  end

  def total_brute
    total = 0
    @item_counter.each do |key, v| 
      total += v * @price_list.price(key)
    end

    total
  end

  def descount
    @item_counter.each_key do |key|
      if @items_with_descount.include?(key)
        descount += key.discounter(@item_counter, @price_list.price(key))
      end
    end

    descount
  end

end
