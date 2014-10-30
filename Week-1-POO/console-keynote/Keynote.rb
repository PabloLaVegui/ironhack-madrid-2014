require './File_Read'
require './Slide_Print'

class Keynote

  def initialize
    @slides
    @actual_slide = 0
  end

  def load_keynote_file name
    @slides = File_Read.new(name).slides
  end

  def start
    @actual_slide = 0
    view_actual_slide
  end

  def next
    @actual_slide += 1
    unless @actual_slide > @slides.size - 1
      view_actual_slide
    else
      @actual_slide = @slides.size - 1
    end
  end

  def previous
    @actual_slide -= 1
    unless @actual_slide < 0
      view_actual_slide
    else
      @actual_slide = 0
    end
  end

  def view_actual_slide
    #puts @slides[@actual_slide]
    screen = Slide_Print.new(@slides[@actual_slide])
    screen.show
  end

end

keynote = Keynote.new
keynote.load_keynote_file 'slides.txt'
keynote.start
6.times{ keynote.next }
keynote.previous
