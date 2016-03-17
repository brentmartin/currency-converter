require 'minitest/autorun'
require 'minitest/pride'

require_relative '../bin/currency.rb'

class CurrencyTest < Minitest::Test

  def test_currency_class_exist
    assert Currency.new(20, "USD")
  end

  def test_amount
    currency = Currency.new(20, "USD")
    assert_equal(20, currency.amount)
  end

  def test_code
    currency = Currency.new(20, "USD")
    assert_equal("USD", currency.code)
  end

  def test_two_objects
    currency_1 = Currency.new(20, "USD")

    currency_2 = Currency.new(20, "USD")
    assert_equal(currency_1, currency_2)

    currency_3 = Currency.new(20, "EUR")
    refute_equal(currency_1, currency_3)

    currency_4 = Currency.new(40, "USD")
    refute_equal(currency_1, currency_4)

    currency_5 = Currency.new(50, "GBP")
    refute_equal(currency_1, currency_5)
  end

  def test_add_two_same_code_currencies
    currency_1 = Currency.new(10, "GBP")
    currency_2 = Currency.new(25, "GBP")
    currency_3 = Currency.new(35, "GBP")
    assert_equal(currency_3, currency_1 + currency_2)

    currency_4 = Currency.new(10, "USD")
    currency_5 = Currency.new(25, "GBP")
    assert_raises DifferentCurrencyCodeError do
      currency_4 + currency_5
    end

    def test_subtract_two_same_code_currencies
      currency_1 = Currency.new(25, "GBP")
      currency_2 = Currency.new(10, "GBP")
      currency_3 = Currency.new(15, "GBP")
      assert_equal(currency_3, currency_1 + currency_2)

      currency_4 = Currency.new(10, "USD")
      currency_5 = Currency.new(25, "GBP")
      assert_raises DifferentCurrencyCodeError do
        currency_4 + currency_5
    end

  end



end


#### EUR = 1.3
#### USD = 1
