class Keynote

  def initialize
  end

end

keynote = Keynote.new
keynote.load_file 'slides.txt'
keynote.play
