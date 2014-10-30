require './File_Read'

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
    if @actual_slide > @slides.size - 1
      @actual_slide = @slides.size - 1
    end
    view_actual_slide
  end

  def previous
    @actual_slide -= 1
    if @actual_slide < 0
      @actual_slide = 0
    end
    view_actual_slide
  end

  def view_actual_slide
    puts @slides[@actual_slide]
  end

end

keynote = Keynote.new
keynote.load_keynote_file 'slides.txt'
keynote.start
6.times{ keynote.next }
keynote.previous
