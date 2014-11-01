require './Slide.rb'

class File_Read

  def initialize name
    @name       = name
    @all_slides = []
  end

  def slides
    File.open(@name) do |f|

      lines_for_slide = []
      while line = f.gets

        if line.chomp == '----'
          @all_slides.push(Slide.new(lines_for_slide))
          lines_for_slide = []
        else
          lines_for_slide.push(line.chomp)
        end

      end
      @all_slides.push(Slide.new(lines_for_slide))

    end
    @all_slides
  end

end
