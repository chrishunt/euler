require 'power_digit_sum'

describe PowerDigitSum do
  it 'calculates correct sum for 2^2' do
    PowerDigitSum.for(2, 2).should == 4
  end

  it 'calculates correct sum for 2^4' do
    PowerDigitSum.for(2, 4).should == 7
  end

  it 'calculates correct sum for 2^15' do
    PowerDigitSum.for(2, 15).should == 26
  end

  it 'calculates correct sum for 2^1000' do
    PowerDigitSum.for(2, 1000).should == 1366
  end
end
