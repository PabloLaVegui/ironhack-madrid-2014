require './TheBanker'

RSpec.describe "The Banker" do

  it "usd to euro" do
    expect(TheBanker.convert(1, "usd", "euro")).to eq(0.77818)
    expect(TheBanker.convert(3, "usd", "euro")).to eq(0.77818 * 3)
  end

  it "gbp to euro" do
    expect(TheBanker.convert(1, "gbp", "euro")).to eq(1.27341)
    expect(TheBanker.convert(2, "gbp", "euro")).to eq(1.27341 * 2)
  end

  it "cad to euro" do
    expect(TheBanker.convert(1, "cad", "euro")).to eq(0.70518)
    expect(TheBanker.convert(2, "cad", "euro")).to eq(0.70518 * 2)
  end

  it "euro to usd" do
    expect(TheBanker.convert(1, "euro", "usd")).to eq(1.28356)
    expect(TheBanker.convert(3, "euro", "usd")).to eq(1.28356 * 3)
  end

  it "euro to gbp" do
    expect(TheBanker.convert(1, "euro", "gbp")).to eq(0.78478)
    expect(TheBanker.convert(3, "euro", "gbp")).to eq(0.78478 * 3)
  end

  it "euro to cad" do
    expect(TheBanker.convert(1, "euro", "cad")).to eq(1.41613)
    expect(TheBanker.convert(3, "euro", "cad")).to eq(1.41613 * 3)
  end

  it "usd to gbp" do
    usd_to_euro = TheBanker.convert(1, "usd", "euro")
    euro_to_gbp = TheBanker.convert(usd_to_euro, "euro", "gbp")
    expect(TheBanker.convert(1, "usd", "gbp")).to eq(euro_to_gbp)

    usd_to_euro = TheBanker.convert(2, "usd", "euro")
    euro_to_gbp = TheBanker.convert(usd_to_euro, "euro", "gbp")
    expect(TheBanker.convert(2, "usd", "gbp")).to eq(euro_to_gbp)
  end

  it "gbp to cad" do
    gbp_to_euro = TheBanker.convert(1, "gbp", "euro")
    euro_to_cad = TheBanker.convert(gbp_to_euro, "euro", "cad")
    expect(TheBanker.convert(1, "gbp", "cad")).to eq(euro_to_cad)

    gbp_to_euro = TheBanker.convert(2, "gbp", "euro")
    euro_to_cad = TheBanker.convert(gbp_to_euro, "euro", "cad")
    expect(TheBanker.convert(2, "gbp", "cad")).to eq(euro_to_cad)
  end

end
