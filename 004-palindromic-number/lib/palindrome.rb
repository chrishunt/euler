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

    (lower_limit..upper_limit).each do |n|
      (n..upper_limit).each do |m|
        result = n * m

        if (result > largest_palindrome) && result.to_s.is_palindrome?
          largest_palindrome = result
        end
      end
    end

    largest_palindrome
  end
end
