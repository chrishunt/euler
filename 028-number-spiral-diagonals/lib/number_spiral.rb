class NumberSpiral
  def sum_for(n)
    max = n * n

    i = 1
    sum = 0
    steps = 2
    steps_count = 0

    while i <= max
      sum += i
      i += steps

      if steps_count < 3
        steps_count += 1
      else
        steps += 2
        steps_count = 0
      end
    end

    sum
  end
end
