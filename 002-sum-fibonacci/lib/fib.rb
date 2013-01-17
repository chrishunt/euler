class Fib
  include Enumerable
  attr_accessor :sequence

  def initialize
    @sequence = [1, 1]
  end

  def even_sum(n)
    inject(0) do |sum, number|
      return sum if number >= n
      number % 2 == 0 ? sum + number : sum
    end
  end

  def each
    i = -1
    while i += 1
      sequence[i] = sequence[i - 1] + sequence[i - 2] unless sequence[i]
      yield sequence[i]
    end
  end
end
