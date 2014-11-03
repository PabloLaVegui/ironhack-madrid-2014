class String_Calculator

  def add string
    result = 0

    if string.length == 1
      result = string.to_i
    else
      terms = generate_terms_array(string)
      terms.each do |c|
        result += c.to_i
      end
    end

    result
  end

  def generate_terms_array string
    if string.include?(",\n")
      arr = [0]
    elsif string[0..1] == "//"
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
