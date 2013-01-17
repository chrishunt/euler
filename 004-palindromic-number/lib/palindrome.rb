class String
  def is_palindrome?
    self == self.reverse
  end
end

class Palindrome
  def of_multiples(digits)
    upper_factor = ('9' * digits).to_i
    lower_factor = ('1' + ('0' * (digits - 1))).to_i

    upper_product = upper_factor * upper_factor
    lower_product = lower_factor * lower_factor

    i = upper_product

    while (i -= 1) > lower_product
      if i.to_s.is_palindrome?
        j = upper_factor
        while (j -= 1) > lower_factor
          if (i % j == 0) && (i / j <= upper_factor)
            return i
          end
        end
      end
    end
  end
end
