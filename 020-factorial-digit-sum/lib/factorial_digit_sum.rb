class Fixnum
  def factorial
    @factorial ||= self.downto(1).inject(1) { |result, n| result * n }
  end
end

class FactorialDigitSum
  def self.for(n)
    n.factorial.to_s.split('').inject(0) { |sum, digit| sum + digit.to_i }
  end
end
