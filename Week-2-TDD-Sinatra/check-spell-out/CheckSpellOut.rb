class CheckSpellOut

  def initialize
    @zero_to_nineteen = [
      "zero","one","two","three","four","five","six","seven",
      "eight","nine","ten","eleven","twelve","thirteen","fourteen",
      "fifteen","sixteen","seventeen","eighteen","nineteen"
    ]
    @twelve_to_ninety = {
      2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
      6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"
    }
  end

  def spell num
    str = ""
    str << integer_part(num.to_i)
    str << decimal_string(num)
    str << " dollars"
  end

  def integer_part num
    str = ""
    if num > 99
      str << spell_cents(num)
      str << integer_part(num % 100) if !is_mult?(num, 100)
    elsif num > 19
      str << spell_dec(num)
      str << integer_part(num % 10) if !is_mult?(num, 10)
    else
      str << @zero_to_nineteen[num]
    end
    str
  end

  def decimal_string num
    if num.class == Float
      decimal_str =
        " and #{(((num - num.to_i) * 100).to_i).to_s.rjust(2, '0')} cents"
    else
      decimal_str = ""
    end
    decimal_str
  end

  def spell_cents num
    str = ""
    str << @zero_to_nineteen[num / 100]
    str << " hundred"
    if !is_mult?(num, 100)
      str << " and "
    end
    str
  end

  def spell_dec num
    str = ""
    str << @twelve_to_ninety[num / 10]
    if !is_mult?(num, 10)
      str << "-"
    end
    str
  end

  def is_mult? a, b
    a % b == 0
  end

end
