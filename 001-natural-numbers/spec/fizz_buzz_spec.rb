# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the
# multiples of 3 or 5 below 1000.

require 'fizz_buzz'

describe FizzBuzz do
  describe '#add' do
    it 'works with 5' do
      subject.add(5).should == 3
    end

    it 'works with 10' do
      subject.add(10).should == 23
    end

    it 'finds the solution to the problem' do
      subject.add(1000).should == 233168
    end
  end

  describe '#fizz_buzzes' do
    it 'collects all multiples of 3 and 5' do
      subject.fizz_buzzes(10).should == [3, 5, 6, 9]
      subject.fizz_buzzes(12).should == [3, 5, 6, 9, 10]
    end
  end
end
