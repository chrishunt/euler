class String
  def is_palindrome?
    self == self.reverse
  end
end

class Palindrome
  def of_multiples(digits)
    upper_limit = ('9' * digits).to_i
    lower_limit = ('1' + ('0' * (digits - 1))).to_i

    largest_palindrome = 0

    upper_limit.downto(lower_limit).each do |i|
      upper_limit.downto(largest_palindrome/i).each do |j|
        result = i * j

        if result > largest_palindrome && result.to_s.is_palindrome?
          largest_palindrome = result
        end
      end
    end

    largest_palindrome
  end
end
