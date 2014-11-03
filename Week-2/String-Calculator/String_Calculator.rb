class String_Calculator

  def add string
    result = 0

    if string.length == 1
      result = string.to_i
    else
      terms = string.split(",")
      terms.each do |c|
        result += c.to_i
      end
    end

    result
  end
end



if String_Calculator.new.add("") != 0
  puts "ERROR! It cannot add an empty string"
end

if String_Calculator.new.add("2") != 2
  puts "ERROR! Cannot add a single number"
end

if String_Calculator.new.add("1,2") != 3
  puts "ERROR! Cannot add two numbers"
end

if String_Calculator.new.add("1,2,3") != 3
  puts "ERROR! Cannot add three numbers"
end
