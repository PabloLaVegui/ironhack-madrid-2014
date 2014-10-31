require './Keynote_Console'

class Slide_Print

  def initialize slide
    @slide   = slide
    show
  end

  def show
    puts @slide
    puts @console
  end

end
