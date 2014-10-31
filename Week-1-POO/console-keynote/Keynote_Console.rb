class Keynote_Console

  attr_accessor :command

  def initialize
    @command = ""
  end

  def view
    print ": next, previous, exit >"
    @command = gets.chomp
  end

end
