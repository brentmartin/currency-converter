# require_relative '/currency_converter.rb'

class CurrencyConverter
  attr_reader :rate_library
  def initialize(rate_library)
    @rate_library = rate_library
  end

  def converter(currency, code)
    currency_amount = currency.amount
    currency_code = currency.code
    new_code = code

    currency_rate_1 = @rate_library.fetch(new_code)
    converted_amount_1 = currency_amount * currency_rate_1

  end

end
