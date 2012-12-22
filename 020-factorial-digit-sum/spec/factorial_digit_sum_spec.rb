require 'factorial_digit_sum'

describe FactorialDigitSum do
  it 'calculates correct sum for 4!' do
    FactorialDigitSum.for(4).should == 6
  end

  it 'calculates correct sum for 10!' do
    FactorialDigitSum.for(10).should == 27
  end

  it 'calculates correct sum for 100!' do
    FactorialDigitSum.for(100).should == 648
  end
end
