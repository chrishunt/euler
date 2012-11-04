class LargeSum
  def self.add(n, nums)
    nums.inject(0) { |sum, num| sum += num }.to_s[0...n].to_i
  end
end
