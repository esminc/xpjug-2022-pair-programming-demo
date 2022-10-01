require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

# FizzBuzz
# fizz_buzz(4) => 4
# 3の倍数を引数に渡すと Fizz
# 5の倍数を引数に渡すと Buzz
# 3の倍数かつ5の倍数を引数に渡すと FizzBuzz
# それ以外の引数の場合は、引数を数字として返す String

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz_multiple_of_3
    assert_equal 'Fizz', fizz_buzz(3)
    assert_equal 'Fizz', fizz_buzz(6)
  end

  def test_fizz_buzz_multiple_of_5
    assert_equal 'Buzz', fizz_buzz(5)
    assert_equal 'Buzz', fizz_buzz(10)
  end

  def test_fizz_buzz_multiple_of_3_and_multiple_of_5
    assert_equal 'FizzBuzz', fizz_buzz(15)
    assert_equal 'FizzBuzz', fizz_buzz(30)
  end

  def test_fizz_buzz_other_numbers
    assert_equal '4', fizz_buzz(4)
    assert_equal '7', fizz_buzz(7)
  end

  def test_fizz_buzz_other_objects
    assert_raises ArgumentError do
      fizz_buzz('Hoge')
    end

    assert_raises ArgumentError do
      fizz_buzz(:fuga)
    end
  end
end
