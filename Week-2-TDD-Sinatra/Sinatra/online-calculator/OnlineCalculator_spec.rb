require './OnlineCalculator'

RSpec.describe "Online Calculator" do

  let(:calc) { OnlineCalculator.new }

  it "Add" do
    expect(calc.operate(
      {"operator1" => "0",
       "operator2" => "3",
       "operation" => "Addition"
      })).to eq("The Addition of 0 and 3 is 3")
  end

  it "Substract" do
    expect(calc.operate(
      {"operator1" => "6",
       "operator2" => "3",
       "operation" => "Substract"
      })).to eq("The Substract of 6 and 3 is 3")
  end

  it "Multiply" do
    expect(calc.operate(
      {"operator1" => "6",
       "operator2" => "0",
       "operation" => "Multiply"
      })).to eq("The Multiply of 6 and 0 is 0")
  end

  it "Division" do
    expect(calc.operate(
      {"operator1" => "6",
       "operator2" => "2",
       "operation" => "Division"
      })).to eq("The Division of 6 and 2 is 3")
  end

  it "Division by 0" do
    expect(calc.operate(
      {"operator1" => "6",
       "operator2" => "0",
       "operation" => "Division"
      })).to eq("The Division of 6 and 0 is nil")
  end

end
