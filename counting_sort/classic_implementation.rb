def counting_sort(array)
  return array if array.length.zero?

  a = array
  k = a.max
  c = Array.new(k, 0)
  b = Array.new(a.length, 0)

  a.length.times do |i|
    c[a[i] - 1] += 1
  end

  for i in (1..(c.length - 1)) do
    c[i] += c[i - 1]
  end

  a.length.times do |i|
    b[c[a[i] - 1] - 1] = a[i]
    c[a[i] - 1] -= 1
  end

  p b
end


counting_sort([3, 2, 8, 1, 4, 5, 9, 3, 1])
