require './String_Calculator'

RSpec.describe "String calculator" do

  # Se ejecuta para cada test
  #before :each do
    #@calculator = String_Calculator.new
  #end

  # Se ejecuta sólo si se invoca
  let(:calculator) { String_Calculator.new }

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

  it "supporneat diferent delimiters" do
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it "supporneat diferent delimiters with one digit" do
    expect(calculator.add("//;\n3")).to eq(3)
  end

  #it "negative valors" do
    #expect(calculator.add("4,-3")).to eq(1)
  #end
  #it "negative valors" do
    #expect(calculator.add("4,-3")).to raise_error "Negative numbers NO!"
  #end

end
