def bubble_sort(array)

n = array.length

loop do
swap = false

(n-1).times do |num|
  if array[num] > array[num + 1]
  array[num] , array[num + 1]  = array[num + 1], array[num]
  swap = true
end
end
  break if not swap
end
  array
end

print bubble_sort([4,9,1,6,2])

# def bubble_sort_by(array)
#   yield
