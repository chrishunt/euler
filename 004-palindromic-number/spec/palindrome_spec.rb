# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

require 'palindrome'

describe Palindrome do
  describe '.of_multiples' do
    it 'works for one digit' do
      Palindrome.of_multiples(1).should == 9
    end

    it 'works for two digits' do
      Palindrome.of_multiples(2).should == 9009
    end

    it 'works for three digits (finds the solution)' do
      Palindrome.of_multiples(3).should == 906609
    end
  end

end

describe String do
  describe '.is_palidrome?' do
    it 'returns false if the string is not a palindrome' do
      'babble'.is_palindrome?.should_not be
    end

    it 'returns true if the string is a palindrome' do
      'racecar'.is_palindrome?.should be
    end
  end
end
