class Five
  def self.divided_up_to(n)
    result = n
    result += n while not_evenly_distributed(result, n)

    result
  end

  private

  def self.not_evenly_distributed(result, n)
    n.downto(1).each { |d| return true if result % d != 0 }

    false
  end
end
