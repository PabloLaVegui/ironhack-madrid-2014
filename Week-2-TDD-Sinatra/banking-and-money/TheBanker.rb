class TheBanker

  TO_EURO = {
    usd: 0.77818,
    gbp: 1.27341,
    cad: 0.70518
  }

  FROM_EURO = {
    usd: 1.28356,
    gbp: 0.78478,
    cad: 1.41613
  }

  def self.convert(amount, from_currency, to_currency)
    if from_currency == "euro"
      total = amount * FROM_EURO[to_currency.to_sym]
    elsif to_currency == "euro"
      total = amount * TO_EURO[from_currency.to_sym]
    else
      total =
        (TO_EURO[from_currency.to_sym] * amount) * FROM_EURO[to_currency.to_sym]
    end
    total
  end

end
