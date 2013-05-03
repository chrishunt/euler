DistinctPowers = Struct.new(:min, :max) do
  def distinct_powers_count
    distinct_powers.count
  end

  def distinct_powers
    all_powers.uniq.sort
  end

  def all_powers
    min.upto(max).map { |i| min.upto(max).map { |j| i ** j }}.flatten
  end
end
