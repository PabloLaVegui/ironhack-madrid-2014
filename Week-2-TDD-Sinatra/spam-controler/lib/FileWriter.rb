class FileWriter

  def initialize file_name
    @file_name = file_name
  end

  def write str
    File.open(@file_name, 'a') do |f|
      f.write(str)
    end
  end

end
