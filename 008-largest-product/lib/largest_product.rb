class LargestProduct
  def self.of_five(n); of(5, n); end

  private

  def self.of(group_size, n)
    numbers = n.to_s.split('').map(&:to_i)

    (0..(numbers.size - group_size)).inject(0) do |largest_product, i|
      result = get_result_for(numbers, i, group_size)
      largest_product = result > largest_product ? result : largest_product
    end
  end

  def self.get_result_for(numbers, index, size)
    group = numbers[index..(index + size - 1)]
    multiply_group group
  end

  def self.multiply_group(group)
    group.inject(1) { |result, n| result * n }
  end
end
