require './Room.rb'

class Game

  def initialize
    @rooms = []
    @rooms.push(generate_room)
  end

  def generate_room
    Room.new("Description room 1", ["N", "S"])
  end

  def start
    view_description @rooms[0]
    view_exits @rooms[0]
  end

  def view_description room
    puts room.description
  end

  def view_exits room
    puts format_exits(room.exits)
  end

  def format_exits exits
    str = ""
    exits.each do |e|
      str << e
    end
    str
  end

end

game = Game.new
game.start
