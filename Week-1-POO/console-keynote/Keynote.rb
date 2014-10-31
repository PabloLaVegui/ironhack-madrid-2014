require './File_Read'
require './Slide_Print'
require './Keynote_Console'

class Keynote

  def initialize
    @slides
    @actual_slide = 0
    @slide_view   = Slide_Print.new
    @console      = Keynote_Console.new

  end

  def load_file name
    @slides = File_Read.new(name).slides
  end

  def start
    @actual_slide = 0
    print_screen @slides[0]
  end

  def print_screen slide
    @slide_view.show(@slides[@actual_slide])
    @console.view
    gest @console.command
  end

  def gest command
    end_app = false

    case command
    when 'next'
      @actual_slide += 1

    when 'previous'
      @actual_slide -= 1

    when 'quit'
      puts "Bye!"
      end_app = true
    end

    unless end_app
      print_screen @slides[@actual_slide]
    end
  end

end


keynote = Keynote.new
keynote.load_file 'slides.txt'
keynote.start
