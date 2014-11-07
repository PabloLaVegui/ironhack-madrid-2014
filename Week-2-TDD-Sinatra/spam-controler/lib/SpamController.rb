class SpamController

  def initialize comment_reader, file_writer
    @comment = comment_reader.comment
    @file_writer = file_writer
    process
  end

  def spam?
    have_two?("http://")
  end

  def have_two? str
    @comment.gsub(str).count > 1
  end

  def procces comment
    if spam?
      store(@comment) 
    end
  end

  def store comment
    @file_writer.write(comment)
  end

end
