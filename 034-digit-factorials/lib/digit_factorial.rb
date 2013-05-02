class DigitFactorial
  include Enumerable

  def is_digit_factorial?(n)
    n == n.to_s.split('').inject(0) { |sum, digit| sum + factorial(digit) }
  end

  def each
    3.upto(1000000).each { |n| yield n if is_digit_factorial? n }
  end

  private

  def factorial(n)
    n.to_i.downto(1).inject(1) { |factorial, number| factorial * number }
  end
end
