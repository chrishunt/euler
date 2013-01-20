class Fib
  include Enumerable

  def containing_digits(n)
    each_with_index do |fib, index|
      return index + 1 if fib.to_s.size == n
    end
  end

  def each
    iteration = 0
    previous = current = 1

    while iteration += 1
      unless [1, 2].include?(iteration)
        temp     = current + previous
        previous = current
        current  = temp
      end

      yield current
    end
  end
end
