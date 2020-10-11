class MergeSort
  def self.sort(array)
    if array.length < 2
      array
    else
      merge(sort(array.first(array.length / 2)), sort(array.last(array.length / 2)))
    end
  end

  def self.merge(a, b)
    return_array = []
    a.each_with_index do |value, index|
      if value > b[index]
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
