require 'mergesort'

describe MergeSort do
  describe '#sort' do
    it "returns empty array if given empty array" do
      expect(MergeSort.sort([])).to eq([])
    end

    it "returns value if given array with single value" do
      expect(MergeSort.sort([1])).to eq([1])
    end

    it "sorts array of two values correctly" do
      expect(MergeSort.sort([5, 1])).to eq([1, 5])
    end

    it "sorts array of five values correctly" do
      expect(MergeSort.sort([3, 7, 1, 9])).to eq([1, 3, 7, 9])
    end
  end
end