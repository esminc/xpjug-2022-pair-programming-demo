def fizz_buzz(number)
  raise ArgumentError unless number.is_a?(Integer)

  return 'FizzBuzz' if (number % 3).zero? && (number % 5).zero?
  return 'Fizz' if (number % 3).zero?
  return 'Buzz' if (number % 5).zero?

  number.to_s
end
