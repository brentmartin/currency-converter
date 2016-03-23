# require_relative '/currency.rb'

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

  def -(other)
    if self.code == other.code
      Currency.new(self.amount - other.amount, self.code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(number)
    rounded_amount = self.amount * number
    Currency.new(rounded_amount.round(2), self.code)
  end

end
