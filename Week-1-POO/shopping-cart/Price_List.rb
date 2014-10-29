class Price_List

  def initialize
    @price = {
       :apples     => 10,
       :oranges    => 5,
       :grapes     => 15,
       :banana     => 20,
       :watermelon => 50
    }
  end

  def price article
    @price[article]
  end

end
