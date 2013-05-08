class SpecialTriplet
  def product_for(sum)
    a, b, c = special_for sum
    a * b * c
  end

  def special_for(sum)
    1.upto(sum).each do |a|
      (a + 1).upto(sum).each do |b|
        (b + 1).upto(sum).each do |c|
          return [a, b, c] if (a + b + c) == sum && is_special?(a, b, c)
        end
      end
    end
  end

  def is_special?(a, b, c)
    (a < b) && (b < c) && (a ** 2 + b ** 2 == c ** 2)
  end
end

