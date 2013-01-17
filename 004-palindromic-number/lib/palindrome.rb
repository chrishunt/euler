class String
  def is_palindrome?
    self == self.reverse
  end
end

class Palindrome
  def of_multiples(digits)
    upper_limit = ('9' * digits).to_i
    lower_limit = ('1' + ('0' * (digits - 1))).to_i

    (upper_limit * upper_limit).downto(lower_limit * lower_limit).each do |i|
      next unless i.to_s.is_palindrome?

      upper_limit.downto(lower_limit).each do |j|
        next unless (i % j == 0) && (i / j <= upper_limit)
        return i
      end
    end
  end
end
