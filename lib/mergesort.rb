class MergeSort
  def self.sort(array)
    if array.length < 2
      array
    elsif array.length == 2
      if array[0] > array[1]
        [array[1], array[0]]
      else
        array
      end
    end
  end
end