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

def bubble_sort_by(array)
  (array.length).times do
  swap = false

  (array.length-1).times do |x|
    if yield(array[x], array[x+1]) < 0
    array[x] , array[x + 1]  =  array[x] , array[x + 1]
  elsif yield(array[x], array[x+1]) > 0
    array[x] , array[x + 1]  = array[x + 1], array[x]
    swap = true
  else yield(array[x], array[x+1]) == 0
    array[x] , array[x+1]  =  array[x] , array[x + 1]
  end
end
break array if not swap
end
end

sorted_array = bubble_sort_by(["hi","hello","hey","hola"]) do |left,right|
  left.length - right.length
end

puts sorted_array
