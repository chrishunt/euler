class FizzBuzz
  def add(range)
    fizz_buzzes(range).inject(0) { |sum, i| sum + i }
  end

  def fizz_buzzes(range)
    (1...range).map { |i| i if (i % 3 == 0 || i % 5 == 0) }.compact
  end
end
