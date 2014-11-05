class OnlineCalculator

  def initialize
    @v1
    @v2
    @operation
  end

  def operate params
    set_values(params)
    case @operation
    when "Addition"
      result = @v1 + @v2
    when "Substract"
      result = @v1 - @v2
    when "Multiply"
      result = @v1 * @v2
    when "Division"
      if @v2 == 0
        result = "nil"
      else
        result = @v1 / @v2
      end
    end
    "The #{@operation} of #{@v1} and #{@v2} is #{result}"
  end

  def set_values params
    @v1 = params["operator1"].to_i
    @v2 = params["operator2"].to_i
    @operation = params["operation"]
  end
end
