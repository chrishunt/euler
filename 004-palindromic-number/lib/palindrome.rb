class String
  def is_palindrome?
    self == self.reverse
  end
end

class Palindrome
  def self.of_multiples(digits)
    upper_limit = ('9' * digits).to_i

    largest_palindrome = 0

    (0..upper_limit).each do |n|
      (0..upper_limit).each do |m|
        result = n * m

        if (result > largest_palindrome) && result.to_s.is_palindrome?
          largest_palindrome = result
        end
      end
    end

    largest_palindrome
  end
end
