class Keynote_Console

  attr_accessor :command

  def initialize
    @command = ""
  end

  def view
    puts "..next, previous >"
    @command = gets.chomp
    # TODO: Comprobar que se puede quitar
  end

end
