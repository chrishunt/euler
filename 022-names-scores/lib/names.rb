class Names
  def score_for_name(name)
    score = 0
    name.upcase.each_byte { |c| score += (c - 64) }
    score
  end

  def score_for_list(names)
    score = 0
    names.sort.each_with_index do |name, index|
      score += score_for_name(name) * (index + 1)
    end
    score
  end
end
