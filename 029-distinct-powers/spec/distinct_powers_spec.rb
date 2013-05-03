require 'distinct_powers'

describe DistinctPowers do
  subject { DistinctPowers.new min, max }

  let(:min) { 2 }
  let(:max) { 5 }

  describe '#all_powers' do
    it 'returns all powers from min to max' do
      expect(subject.all_powers).to eq [
        4, 8, 16, 32, 9, 27, 81, 243, 16, 64, 256, 1024, 25, 125, 625, 3125
      ]
    end
  end

  describe '#distinct_powers' do
    it 'return only unique powers from min to max' do
      expect(subject.distinct_powers).to eq [
        4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125
      ]
    end
  end

  describe '#distinct_powers_count' do
    it 'returns the number of distinct powers from min to max' do
      expect(subject.distinct_powers_count).to eq 15
    end
  end
end
