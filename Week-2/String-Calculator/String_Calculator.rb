#require './NegativeNumbersException'

class String_Calculator

  def add string
    #if string.include?("-")
      #raise "Negative numbers NO!"
    #end

    terms = generate_terms_array(string)
    terms.inject(0){ |sum, e| sum + e.to_i }
  end

  def generate_terms_array string
    if string[0..1] == "//"
      split_char = string[2]
      string = string[4..-1]
      arr = string.split(split_char)
    else
      string.gsub!("\n", ",")
      arr = string.split(",")
    end

    arr
  end

end
