class Item_Counter

  attr_reader :counter

  def initialize
    @counter = {
       :apples     => 0,
       :oranges    => 0,
       :grapes     => 0,
       :banana     => 0,
       :watermelon => 0
    }
  end

  def add article
    @counter[article] += 1
  end

end
