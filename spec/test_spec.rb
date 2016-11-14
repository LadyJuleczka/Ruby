require 'simplecov'
SimpleCov.start

require 'insertionsort'

RSpec.describe 'insertionsort.rb' do
  describe 'sort' do
    it 'initializes without errors' do
      expect { sort([5, 7, 2]) }.not_to raise_error
    end

    it 'sorting empty array' do
      expect { sort([]) }.not_to raise_error
    end

    it 'object should be sorted asc' do
      arr = [25, 11, 6, 56, 2]
      sorted = arr.sort
      expect(sorted[1] <= sorted[2]).to be true
    end

    it 'object shouldnt be sorted desc' do
      arr = [25, 11, 6, 56, 2]
      sorted = arr.sort
      expect(sorted[1] >= sorted[2]).to be false
    end

    it 'object are sorted correctly' do
      arr = [25, 11, 6, 56, 2]
      sorted = arr.sort
      expect(sorted).to eq([2, 6, 11, 25, 56])
    end

    it 'should sort array with one element' do
      arr = [2]
      sorted = arr.sort
      expect(sorted).to match_array([2])
    end

    it 'sorting working on strings' do
      arr = %w(wab aab bab)
      sorted = arr.sort
      expect(sorted).to eq(%w(aab bab wab))
    end

    it 'dont change String type' do
      arr = %w(wab aab bab)
      sorted = arr.sort
      expect(sorted[0]).to be_a_kind_of String
    end

    it 'dont change Int type' do
      arr = [5, 6, 2]
      sorted = arr.sort
      expect(sorted[0]).to be_a_kind_of Integer
    end

    it 'dont mess with number of object in array' do
      arr = [5, 6, 2, 24, 1]
      sorted = arr.sort
      expect(arr.size).to eq(sorted.size)
    end
  end
  describe 'sorted?' do
    it 'should be defined' do
      expect { sorted?([1, 4, 6]) }.not_to raise_error
    end

    it 'should equal true if sorted' do
      expect(sorted?([1, 4, 6])).to be true
    end

    it 'should equal false if not sorted' do
      expect(sorted?([9, 4, 6])).to be false
    end
  end
  describe 'exchange' do
    it 'should be defined' do
      expect { exchange([4, 6, 2], 1, 2) }.not_to raise_error
    end
    it 'should change first with second' do
      expect(exchange([4, 6, 2], 1, 2)).to eq([2, 6])
    end
  end
  describe 'less' do
    it 'should be defined' do
      expect { less(5, 8) }.not_to raise_error
    end
    it 'should return true if left are smaller than right' do
      expect(less(5, 8)).to be true
    end
    it 'should return false if left are grater than right' do
      expect(less(11, 8)).to be false
    end
    it 'should return int' do
      expect { less(4, 8).to be_a_kind_of(integer) }
    end
  end
  describe 'print_elements' do
    it 'should be defined' do
      expect { print_elements([5, 8, 9]) }.not_to raise_error
    end
  end
end
