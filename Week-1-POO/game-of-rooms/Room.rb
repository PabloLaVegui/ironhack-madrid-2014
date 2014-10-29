class Room

  attr_accessor :description, :exits

  def initialize description, exits
    @description = description
    @exits = exits
  end

end
