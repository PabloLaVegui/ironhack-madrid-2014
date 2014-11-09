class StringCalculator

  def add string
    terms = generate_terms_array(string)
    terms.inject(0){ |sum, e| sum + e.to_i }
  end

  def generate_terms_array string
    if have_custom_separator? string
      string = string_with_custom_delimiter(string)
    end
    arr = str_to_num_array(string)
    string.gsub!("\n", ",")
    arr = string.split(",")
  end

  def have_custom_separator? string
    string[0..1] == "//"
  end

  def string_with_custom_delimiter string
    string[4..-1].gsub(split_char(string), ",")
  end

  def split_char string
    string[2]
  end

  def str_to_num_array string
  end

end
