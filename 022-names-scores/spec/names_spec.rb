require 'names'

describe Names do
  describe '#score_for_name' do
    it 'calculates the score for tom' do
      subject.score_for_name('tom').should == 48
    end

    it 'calculates the score for collin' do
      subject.score_for_name('colin').should == 53
    end
  end

  describe '#score_for_list' do
    context 'when names are in alphabetic order' do
      let(:names) {%w[ joe tim tom ]}

      it 'calculates the alphabetic score' do
        subject.score_for_list(names).should == 258
      end
    end

    context 'when names are not in alphabetic order' do
      let(:names) {%w[ tom tim joe ]}

      it 'calculates the alphabetic score' do
        subject.score_for_list(names).should == 258
      end
    end

    context 'with a big ass file of names' do
      let(:names){
        File.read('names.txt').split(',').map { |name| name.gsub("\"",'') }
      }

      it 'calculates the alphabetic score' do
        subject.score_for_list(names).should == 871198282
      end
    end
  end
end
