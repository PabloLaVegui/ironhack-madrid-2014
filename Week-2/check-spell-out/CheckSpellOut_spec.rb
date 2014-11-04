require './CheckSpellOut'

RSpec.describe "CheckSpellOut" do

  let(:cso) { CheckSpellOut.new }

  it "units zero" do
    expect(cso.spell(0)).to eq("zero dollars")
  end

  it "units one" do
    expect(cso.spell(1)).to eq("one dollars")
  end

  it "units one" do
    expect(cso.spell(9)).to eq("nine dollars")
  end

  it "decens nineteen" do
    expect(cso.spell(19)).to eq("nineteen dollars")
  end

  it "decens twenty" do
    expect(cso.spell(20)).to eq("twenty dollars")
  end

  it "ninety-nine" do
    expect(cso.spell(99)).to eq("ninety-nine dollars")
  end

  it "one hundred" do
    expect(cso.spell(100)).to eq("one hundred dollars")
  end

  it "one hundred one" do
    expect(cso.spell(101)).to eq("one hundred and one dollars")
  end

  it "one hundred and fifty-five" do
    expect(cso.spell(155)).to eq("one hundred and fifty-five dollars")
  end

  it "one hundred and twenty-one and 40 cents" do
    expect(cso.spell(121.40)).to eq("one hundred and twenty-one and 40 cents dollars")
  end

  it "three hundred and eleven and 04 cents" do
    expect(cso.spell(311.04)).to eq("three hundred and eleven and 04 cents dollars")
  end

end
