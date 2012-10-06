# The sum of the squares of the first ten natural numbers is:
#
#   12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is:
# 
#   (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is:
#
#   3025 - 385 = 2640
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

require 'difference_of_sums'

describe DifferenceOfSums do
  it 'works for 2' do
    DifferenceOfSums.for(2).should == 4
  end

  it 'works for 3' do
    DifferenceOfSums.for(3).should == 22
  end

  it 'works for 10' do
    DifferenceOfSums.for(10).should == 2640
  end

  it 'works for 100 (finds the solution)' do
    DifferenceOfSums.for(100).should == 25164150
  end
end



