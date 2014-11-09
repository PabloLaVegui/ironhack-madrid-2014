require 'pry'
require './Cell'

class Board

  def initialize height, width
    @height = height
    @width  = width
    @cells  = dead_board
  end

  def cell_at i, j
    @cells[i][j]
  end

  def set_cell i, j, cell
    @cells[i][j] = cell
  end

  def dead_board
    dead_board = Array.new(@height) { Array.new(@width) }
    dead_board.each do |row|
      row.map!{ Cell.new(:dead) }
    end
  end

  def next_step
    @cells = @cells.each_with_index.map do |row, i|
      row.each_with_index.map do |cell, j|
        next_state = @cells[i][j].next_state(alive_neighbours(@cells, i, j))
        Cell.new(next_state)
      end
    end
  end

  def alive_neighbours array, i, j
    cells_alive = 0
    cells_alive += 1 if top_cell_is_alive?(array, i, j)
    cells_alive += 1 if bottom_cell_is_alive?(array, i, j)
    cells_alive += 1 if left_cell_is_alive?(array, i, j)
    cells_alive += 1 if right_cell_is_alive?(array, i, j)
    cells_alive
  end

  def top_cell_is_alive? array, i, j
    !cell_is_in_top_limit(i) && array[i-1][j].state == :alive
  end

  def bottom_cell_is_alive? array, i, j
    !cell_is_in_bottom_limit(i) && array[i+1][j].state == :alive
  end

  def left_cell_is_alive? array, i, j
    !cell_is_in_left_limit(j) && array[i][j-1].state == :alive
  end

  def right_cell_is_alive? array, i, j
    !cell_is_in_right_limit(j) && array[i][j].state == :alive
  end

  def cell_is_in_top_limit i
    i == 0
  end

  def cell_is_in_bottom_limit i
    i == @height - 1
  end

  def cell_is_in_left_limit j
    j == 0
  end

  def cell_is_in_right_limit j
    j == @width - 1
  end


end
