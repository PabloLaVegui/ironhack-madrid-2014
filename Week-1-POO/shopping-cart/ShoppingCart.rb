require './Price_List'
require './Item_Counter'
require './Apples_Discount'
require './Oranges_Discount'
require './Grapes_Discount'

class ShopingCart

  def initialize
    @cost = 0
    @item_counter = Item_Counter.new
    @price_list = Price_List.new
  end

  def add article
    @item_counter.add article
  end

  def cost
    num_apples     = @item_counter.counter[:apples]
    num_oranges    = @item_counter.counter[:oranges]
    num_grapes     = @item_counter.counter[:grapes]
    num_banana     = @item_counter.counter[:banana]
    num_watermelon = @item_counter.counter[:watermelon]

    @cost += num_apples      * @price_list.price(:apples)
    @cost += num_oranges     * @price_list.price(:oranges)
    @cost += num_grapes      * @price_list.price(:grapes)
    @cost += num_banana      * @price_list.price(:banana)
    @cost += num_watermelon  * @price_list.price(:watermelon)

    if num_apples >= 2
      @cost -= Apples_Discount.new.discounter(num_apples, @price_list)
    end

    if num_oranges >= 3
      @cost -= Oranges_Discount.new.discounter(num_oranges, @price_list)
    end

    if num_grapes >= 4 && num_banana > 0
      @cost -= Grapes_Discount.new.discounter(num_grapes, @price_list, num_banana)
    end

    @cost
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

puts cart.cost
