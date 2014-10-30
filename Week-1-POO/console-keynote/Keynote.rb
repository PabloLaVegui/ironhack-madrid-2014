require './File_Read'

class Keynote

  def initialize
    @slides
  end

  def load_keynote_file name
    @slides = File_Read.new(name).slides
    puts @slides
  end

end

keynote = Keynote.new
keynote.load_keynote_file 'slides.txt'
#keynote.play
