require 'special_triplet'

describe SpecialTriplet do
  describe '#is_special?' do
    it 'returns true when triplet is special' do
      expect(subject.is_special? 3, 4, 5).to be_true
    end

    it 'returns false when triplet is not special' do
      expect(subject.is_special? 3, 4, 6).to be_false
    end

    it 'returns false when triplet is special, but a > b' do
      expect(subject.is_special? 4, 3, 5).to be_false
    end
  end

  describe '#special_for' do
    it 'returns a special a, b, c where a + b + c = sum' do
      expect(subject.special_for 12).to eq [3, 4, 5]
    end
  end

  describe '#product_for' do
    it 'returns the product of the special for sum' do
      expect(subject.product_for 12).to eq 60
    end
  end
end

