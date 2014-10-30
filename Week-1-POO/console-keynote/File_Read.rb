class File_Read

  def initialize name
    @name       = name
    @all_slides = []
  end

  def slides
    File.open(@name) do |f|

      while line = f.gets
        unless line.include? '----'
          @all_slides.push line.chomp
        end
      end

      @all_slides
    end
  end

end
