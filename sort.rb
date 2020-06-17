def bubble_sort(arr)
  len = arr.size - 1

  (0..len).map do |number|
    (0..len - number - 1 ).map do |num_next|
      num_next = number + 1 
      arr[num_next], arr[number] = arr[number], arr[num_next] if  arr[number] > arr[num_next]
    end
  end
  arr
end

puts (bubble_sort([1, 2, 5, 3, 6, 5, 6, 6, 7, 4, 3]))
