require './CheckSpellOut'

RSpec.describe "CheckSpellOut" do

  let(:cso) { CheckSpellOut.new }

  it "units zero" do
    expect(cso.spell(0)).to eq("zero")
  end

  it "units one" do
    expect(cso.spell(1)).to eq("one")
  end

  it "units one" do
    expect(cso.spell(9)).to eq("nine")
  end

  it "decens nineteen" do
    expect(cso.spell(19)).to eq("nineteen")
  end

  it "decens twenty" do
    expect(cso.spell(20)).to eq("twenty")
  end

  it "ninety-nine" do
    expect(cso.spell(99)).to eq("ninety-nine")
  end

  it "one hundred" do
    expect(cso.spell(100)).to eq("one hundred")
  end

  it "one hundred one" do
    expect(cso.spell(101)).to eq("one hundred and one")
  end

  it "one hundred fifty-five" do
    expect(cso.spell(155)).to eq("one hundred and fifty-five")
  end

end
