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
    if num > 99
      str << spell_cents(num)
      str << spell(num % 100) if num % 100 > 0
    elsif num > 19
      str << spell_dec(num)
      str << spell(num % 10) if num % 10 > 0
    else
      str << @zero_to_nineteen[num]
    end
    str
  end

  def spell_cents num
    str = ""
    str << @zero_to_nineteen[num / 100]
    str << " hundred"
    if num % 100 > 0
      str << " and "
    end
    str
  end

  def spell_dec num
    str = ""
    str << @twelve_to_ninety[num / 10]
    if num % 10 > 0
      str << "-"
    end
    str
  end

end
