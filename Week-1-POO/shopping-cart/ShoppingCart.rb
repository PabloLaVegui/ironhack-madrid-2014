require './Price_List'
require './Item_Counter'
require './Apples_Discount'
require './Oranges_Discount'
require './Grapes_Discount'
require './Cost_Calculator'

class ShopingCart

  def initialize
    @cost = 0
    @item_counter = Item_Counter.new
    @price_list = Price_List.new
  end

  def add article
    @item_counter.add article
  end

  def total_amount
    @cost = Cost_Calculator.new(@item_counter.counter, @price_list).total
  end

end


cart = ShopingCart.new

cart.add :apples
cart.add :apples

cart.add :banana

cart.add :oranges
cart.add :oranges
cart.add :oranges
cart.add :oranges
cart.add :oranges

cart.add :grapes
cart.add :grapes
cart.add :grapes
cart.add :grapes
#90

cart.add :grapes

cart.add :grapes
cart.add :grapes
cart.add :grapes
cart.add :grapes

puts cart.total_amount
