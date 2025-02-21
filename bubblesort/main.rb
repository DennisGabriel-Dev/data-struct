def bubble_sort(array)
  for _ in array do
    ordered = true
    for i in (0...(array.length - 1)) do
      if array[i] > array[i + 1]
        ordered = false
        array[i + 1], array[i] = array[i], array[i + 1]
      end
    end
    return p array unless ordered
  end

  p array
end


bubble_sort([3, 1, 4, 5, 7])
