class Caesar_Cypher

  attr_accessor :string

  def initialize string
    @string = string
  end

  def cipher
    newString = ""
    (0...@string.length).each do |i|
      ascii = @string[i].ord + 3
      if ascii > 122
        ascii -= 26
      end
      newString << ascii.chr

    end
    newString
  end

  def cipherDeco
    newString = ""
    @string.each_char do |i|
      ascii = @string[i].ord - 3
      if ascii < 97
        ascii += 26
      end
      newString << ascii.chr

    end
    newString
  end

end

caesar = Caesar_Cypher.new("abc")

puts "@string: #{caesar.string}"
puts caesar.cipher
puts caesar.cipherDeco

caesar.string = "zxy"
puts "@string: #{caesar.string}"

puts caesar.cipher
puts caesar.cipherDeco
