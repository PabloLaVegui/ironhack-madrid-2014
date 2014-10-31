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
    print_screen
  end

  private

    def print_screen
      @slide_view.show_center(@slides[@actual_slide])
      @console.view
      gest @console.command
    end

    def print_screen_auto_mode
      @slide_view.show_center_with_bottom_message(@slides[@actual_slide])
    end

    def gest command
      end_app = false

      case command
      when 'next'
        @actual_slide += 1 if @actual_slide < @slides.length - 1

      when 'previous'
        @actual_slide -= 1 if @actual_slide > 0

      when 'exit'
        puts "bye!"
        end_app = true

      when 'auto'
        while @actual_slide < @slides.length
          print_screen_auto_mode
          sleep(2)
          @actual_slide += 1
        end
        @actual_slide -= 1

      end

      unless end_app
        print_screen
      end
    end

end


keynote = Keynote.new
keynote.load_file 'slides.txt'
keynote.start
