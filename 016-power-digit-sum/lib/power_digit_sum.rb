class PowerDigitSum
  def self.for(n, e)
    (n ** e).to_s.split('').inject(0) { |sum, digit| sum + digit.to_i }
  end
end
