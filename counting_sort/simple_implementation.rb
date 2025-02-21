def counting_sort(arr)
  max = arr.max
  count = Array.new(max + 1, 0)
  arr.each { |e| count[e] += 1}

  sort = []
  count.each_index do |e, i|
    count[e].times do
      sort << i
    end
  end
end

arr = [3, 4, 2, 1, 6, 7, 1, 2]
pp counting_sort(arr)
