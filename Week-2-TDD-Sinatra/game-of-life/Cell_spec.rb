require './Cell.rb'

RSpec.describe "Game of life cell next state" do

  let(:cell_alive) { Cell.new(:alive) }
  let(:cell_dead)  { Cell.new(:dead) }

  it "underpopulation" do
    expect(cell_alive.next_state!(1)).to eq(:dead)
  end

  it "continue live" do
    expect(cell_alive.next_state!(2)).to eq(:alive)
    expect(cell_alive.next_state!(3)).to eq(:alive)
  end

  it "overcrowding" do
    expect(cell_alive.next_state!(4)).to eq(:dead)
  end

  it "reproduction" do
    expect(cell_dead.next_state!(3)).to eq(:alive)
  end

end
