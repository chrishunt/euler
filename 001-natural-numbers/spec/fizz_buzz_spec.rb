require 'fizz_buzz'

describe FizzBuzz do
  describe '#add' do
    it 'works with 5' do
      FizzBuzz.add(5).should == 3
    end

    it 'works with 10' do
      FizzBuzz.add(10).should == 23
    end

    it 'finds the solution to the problem' do
      FizzBuzz.add(1000).should == 233168
    end
  end

  describe '#fizz_buzzes' do
    it 'collects all multiples of 3 and 5' do
      FizzBuzz.fizz_buzzes(10).should == [3, 5, 6, 9]
      FizzBuzz.fizz_buzzes(12).should == [3, 5, 6, 9, 10]
    end
  end
end
