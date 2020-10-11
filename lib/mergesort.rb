class MergeSort
  def self.sort(array)
    if array.length < 2
      array
    else
      left, right = array.each_slice( (array.size/2.0).round ).to_a
      merge(sort(left), sort(right))
    end
  end

  def self.merge(a, b)
    return_array = []
    a.each_with_index do |value, index|
      if b[index].nil?
        return_array.push(value)
      elsif value > b[index]
        return_array.push(b[index])
        return_array.push(value)
      else
        return_array.push(value)
        return_array.push(b[index])
      end
    end
    return_array
  end
end
