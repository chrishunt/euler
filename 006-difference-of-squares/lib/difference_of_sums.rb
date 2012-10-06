class DifferenceOfSums
  def self.for(n)
    square_of_the_sum_for(n) - sum_of_the_squares_for(n)
  end

  private

  def self.square_of_the_sum_for(n)
    sum = (1..n).inject(0) { |sum, m| sum += m }
    sum * sum
  end

  def self.sum_of_the_squares_for(n)
    (1..n).inject(0) { |sum, m| sum += (m * m) }
  end
end
