require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz_multiple_of_3
    assert_equal 'Fizz', fizz_buzz(3)
    assert_equal 'Fizz', fizz_buzz(6)
  end

  def test_fizz_buzz_multiple_of_5
    assert_equal 'Buzz', fizz_buzz(5)
    assert_equal 'Buzz', fizz_buzz(10)
  end

  def test_fizz_buzz_multiple_of_15
    assert_equal 'FizzBuzz', fizz_buzz(15)
    assert_equal 'FizzBuzz', fizz_buzz(30)
  end

  def test_fizz_buzz_others
    assert_equal '1', fizz_buzz(1)
    assert_equal '43', fizz_buzz(43)
  end
end
