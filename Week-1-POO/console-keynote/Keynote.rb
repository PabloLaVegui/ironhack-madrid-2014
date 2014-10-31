require './File_Read'
require './Slide_Print'
require './Keynote_Console'

class Keynote

  def initialize
    @slides
    @console = Keynote_Console.new
    @actual_slide = 0
  end

  def load_keynote_file name
    @slides = File_Read.new(name).slides
  end

  def start
    @actual_slide = 0
    print_screen @slides[0]
  end

  # TODO: Clase slide??
  def print_screen slide
    Slide_Print.new(slide)
    @console.view
    gest @console.command
  end

  def gest command
    case command

    when 'next'
      @actual_slide += 1
      print_screen @slides[@actual_slide]

    when 'previous'
      @actual_slide -= 1
      print_screen @slides[@actual_slide]

    when 'quit'

    else
      #TODO: Print en otra clase
      puts 'Bad command!!'
      print_screen @slides[@actual_slide]
    end
  end


end

keynote = Keynote.new
keynote.load_keynote_file 'slides.txt'
keynote.start
