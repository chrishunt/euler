require 'digit_factorial'

describe DigitFactorial do
  describe '#each' do
    it 'iterates through digit factorials' do
      subject.take(2).should == [145, 40585]
    end
  end

  describe '#is_digit_factorial?' do
    context 'when the sum of the factorial of the digits equals' do
      let(:number) { 145 }

      it 'returns true' do
        expect(subject.is_digit_factorial? number).to be_true
      end
    end

    context 'when the sum of the factorial of the digits does not equal' do
      let(:number) { 123 }

      it 'returns false' do
        expect(subject.is_digit_factorial? number).to be_false
      end
    end
  end
end
