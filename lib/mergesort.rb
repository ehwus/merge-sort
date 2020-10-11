class MergeSort
  def self.sort(array)
    if array.length < 2
      array
    else
      left, right = array.each_slice( (array.size/2.0).round ).to_a
      merge(sort(left), sort(right))
    end
  end

  def self.merge(left, right)
    return_array = []
    until left.empty? || right.empty?
      return_array << (left.first <= right.first ? left.shift : right.shift)
    end
    return_array + left + right
  end
end
