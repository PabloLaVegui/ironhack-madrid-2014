require 'artii'

class AsciiConverter

  attr_reader :str

  def initialize str
    @str = convert(str)
  end

  def show
    @str
  end

  def convert str
    art = Artii::Base.new
    art.asciify(str)
  end

end
