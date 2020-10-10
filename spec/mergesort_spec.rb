require 'mergesort'

describe MergeSort do
  describe '#sort' do
    it "returns empty array if given empty array" do
      expect(MergeSort.sort([])).to eq([])
    end
  end
end