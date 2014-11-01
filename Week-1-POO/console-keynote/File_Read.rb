require './Slide.rb'

class File_Read

  def initialize name
    @name       = name
    @all_slides = []
  end

  def slides
    lines_to_slides(read_lines)
  end

  def read_lines
    lines = []

    File.open(@name) do |f|
      while line = f.gets
        lines.push(line)
      end
    end

    lines
  end

  def lines_to_slides lines
    lines_for_slide = []

    lines.each do |l|
      if l.chomp == '----'
          @all_slides.push(Slide.new(lines_for_slide))
          lines_for_slide = []
      else
          lines_for_slide.push(l.chomp)
      end
    end

    @all_slides.push(Slide.new(lines_for_slide))
  end

end
