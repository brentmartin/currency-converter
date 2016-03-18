require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/currency_converter.rb'

class CurrencyConverterTest < Minitest::Test

  def test_currencyconverter_class_exist
    rate = {}
    currency_converter_1 = CurrencyConverter.new(rate)
    assert CurrencyConverter.new({})

    assert_equal({}, currency_converter_1.rate_library)
  end

  def test_keyvalue_pair
    rate_library = {USD: 1.0, EUR: 0.74, JPY: 120.0}
    currency_converter_1 = CurrencyConverter.new(rate_library)
    assert_equal(rate_library, currency_converter_1.rate_library)
  end

  def test_currency_conversion
    currency = Currency.new(10.0, "USD")
    code = "EUR"
    rate_library = {USD: 1.0, EUR: 0.74, JPY: 120.0}
    currency_conversion_1 = CurrencyConverter.new(rate_library)
    assert(currency_conversion_1.converter(currency, code))


  end

end
