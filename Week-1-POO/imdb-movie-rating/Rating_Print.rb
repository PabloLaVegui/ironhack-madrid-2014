class Rating_Print

  def initialize ratings
    @ratings = ratings
  end

  def show
    print_columns
    print_titles
  end

  def print_columns
    10.downto(1).each do |i|
      @ratings.each_value do |v|
        if v >= i
          print "**   "
        else
          print "     "
        end
      end
      print "\n"
    end
  end

  def print_titles
    index = 0
    @ratings.each_key do |k|
      puts "#{index}. #{k}"
      index += 1
    end
  end

end
