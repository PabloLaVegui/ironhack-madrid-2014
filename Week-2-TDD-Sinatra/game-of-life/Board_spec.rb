require './Board'

RSpec.describe "Game of life Board" do

  let(:board) { Board.new(5,5) }

  it "cell dead" do
    board.set_cell(1, 1, Cell.new(:alive))
    board.next_step
    expect(board.cell_at(1,1).state).to eq(:dead)
    expect(board.cell_at(4,2).state).to eq(:dead)
  end

  it "cell born" do
    board.set_cell(2, 2, Cell.new(:alive))
    board.set_cell(3, 1, Cell.new(:alive))
    board.set_cell(4, 2, Cell.new(:alive))
    board.next_step
    expect(board.cell_at(3,2).state).to eq(:alive)
  end

end
