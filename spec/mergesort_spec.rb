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

  describe "#merge" do
    it "returns two arrays of one value merged together in order" do
      expect(MergeSort.merge([3], [1])).to eq([1, 3])
    end

    it "returns two sorted arrays of 3 together in order" do
      expect(MergeSort.merge([1, 3, 5], [2, 4, 6])).to eq([1, 2, 3, 4, 5, 6])
    end
  end
end