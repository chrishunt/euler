class FizzBuzz
  def add(range)
    (1...range).inject(0) do |sum, i|
      (i % 3 == 0 || i % 5 == 0) ? sum + i : sum
    end
  end
end
