require 'terminfo'

class Slide_Print

  def initialize
    @screen_dimension = TermInfo.screen_size
    @height = @screen_dimension[0]
    @width  = @screen_dimension[1]
  end

  def show_center slide
    print_blank @height / 2
    puts slide.center(@width)
    print_blank @height / 2
  end

  private

    def print_blank lines
      lines.times do |i|
        puts ''
      end
    end

end
