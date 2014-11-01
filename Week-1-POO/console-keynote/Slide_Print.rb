require 'terminfo'

class Slide_Print

  def initialize
    @screen_dimension = TermInfo.screen_size
    @height = @screen_dimension[0]
    @width  = @screen_dimension[1]
  end

  def show_center slide
    slide_lines = slide.lines.count

    print_blank (@height - slide_lines) / 2

    slide.lines.each do |l|
      puts l.center(@width)
    end

    print_blank (@height - slide_lines) / 2
  end

  def show_center_with_bottom_message slide
    show_center slide
    puts "MODE: AUTO"
  end

  private

    def print_blank lines
      lines.times do |i|
        puts ''
      end
    end

end
