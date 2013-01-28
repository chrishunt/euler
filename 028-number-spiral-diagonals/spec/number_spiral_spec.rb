require 'number_spiral'

describe NumberSpiral do
  describe '#sum_for' do
    it 'finds the diagnal sum for 1' do
      subject.sum_for(1).should == 1
    end

    it 'finds the diagnal sum for 3' do
      subject.sum_for(3).should == 25
    end

    it 'finds the diagnal sum for 5' do
      subject.sum_for(5).should == 101
    end

    it 'finds the diagnal sum for 1001 (the solution)' do
      subject.sum_for(1001).should == 669171001
    end
  end
end
