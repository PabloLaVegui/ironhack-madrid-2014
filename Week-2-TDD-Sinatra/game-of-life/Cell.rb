class Cell

  attr_accessor :state

  def initialize state
    @state = state
  end

  def next_state live_neighbours
    state = @state
    state = :dead if underpopulation(live_neighbours) ||
                     overcrowding(live_neighbours)
    state = :alive if reproduction(live_neighbours)
    state
  end

  def next_state! live_neighbours
    @state = next_state(live_neighbours)
  end


  def underpopulation live_neighbours
    @state == :alive && live_neighbours < 2
  end

  def overcrowding live_neighbours
    @state == :alive && live_neighbours > 3
  end

  def reproduction live_neighbours
    @state == :dead && live_neighbours == 3
  end

end
