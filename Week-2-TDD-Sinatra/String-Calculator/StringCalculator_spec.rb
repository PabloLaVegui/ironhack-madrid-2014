require './StringCalculator'

RSpec.describe "String calculator" do

  # Se ejecuta para cada test
  #before :each do
    #@calculator = StringCalculator.new
  #end

  # Se ejecuta sólo si se invoca
  let(:calculator) { StringCalculator.new }

  it "zero digits" do
    expect(calculator.add("")).to eq(0)
  end

  it "one digits" do
    expect(calculator.add("5")).to eq(5)
  end

  it "two digits" do
    expect(calculator.add("1,2")).to eq(3)
  end

  it "three digits" do
    expect(calculator.add("1,2,3")).to eq(6)
  end

  it "new line separator" do
    expect(calculator.add("1,2\n3")).to eq(6)
  end

  it "support diferent delimiters" do
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it "support diferent delimiters with one digit" do
    expect(calculator.add("//;\n3")).to eq(3)
  end

end
