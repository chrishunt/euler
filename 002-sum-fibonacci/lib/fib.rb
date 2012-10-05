class Fib
  def self.even_sum(n)
    return 0 if n <= 2

    previous_previous = 1
    previous = 2
    sum = 2

    while (current = previous + previous_previous) < n
      sum += current if current % 2 == 0
      previous_previous = previous
      previous = current
    end

    sum
  end
end
