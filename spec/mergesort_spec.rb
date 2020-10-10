require 'mergesort'

describe MergeSort do
  describe '#sort' do
    it "returns empty array if given empty array" do
      expect(MergeSort.sort([])).to eq([])
    end

    it "returns value if given array with single value" do
      expect(MergeSort.sort([1])).to eq([1])
    end
  end
end