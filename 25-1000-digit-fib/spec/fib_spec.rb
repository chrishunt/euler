require 'fib'

describe Fib do
  describe '#take' do
    it 'takes the first n fibs' do
      subject.take(5).should == [1, 1, 2, 3, 5]
    end
  end

  describe '#containing_digits' do
    it 'returns the index of the first fib with 3 digits' do
      subject.containing_digits(3).should == 12
    end

    it 'returns the index of the first fib with 1000 digits' do
      subject.containing_digits(1000).should == 4782
    end
  end
end
