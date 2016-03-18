require_relative '../bin/currency.rb'

class CurrencyConverter
  attr_reader :rate_library
  def initialize(rate_library)
    @rate_library = rate_library
  end

  def converter(currency, code)

  end

end


# ( Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)
