

class DifferentCurrencyCodeError < StandardError
  def message
    "Naw man, diff currencies. Bro."
  end
end

class Currency
  attr_accessor :amount, :code
  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(other)
    self.amount == other.amount && self.code == other.code
  end

  def +(other)
    if self.code == other.code
      Currency.new(self.amount + other.amount, self.code)
    else
      raise DifferentCurrencyCodeError
    end
  end



end
