# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder. What is the smallest positive number that is
# evenly divisible by all of the numbers from 1 to 20?

require 'five'

describe Five do
  it 'can find the smallest number divisible by 1 to 1' do
    Five.divided_up_to(1).should == 1
  end

  it 'can find the smallest number divisible by 1 to 2' do
    Five.divided_up_to(2).should == 2
  end

  it 'can find the smallest number divisible by 1 to 3' do
    Five.divided_up_to(3).should == 6
  end

  it 'can find the smallest number divisible by 1 to 4' do
    Five.divided_up_to(4).should == 12
  end

  it 'can find the smallest number divisible by 1 to 10' do
    Five.divided_up_to(10).should == 2520
  end

  it 'can find the smallest number divisible by 1 to 20 (solution)' do
    Five.divided_up_to(20).should == 232792560
  end
end
