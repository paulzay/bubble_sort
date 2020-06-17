def bubble_sort(arr)
  len = arr.size - 1

  (0..len).map do |number|
    (0..len - number - 1).map do |num|
      num_next = num + 1
      arr[num], arr[num_next] = arr[num_next], arr[num] if arr[num] > arr[num_next]
    end
  end
  arr
end

def bubble_sort_by(arr)
  len = arr.size - 1

  (0..len).map do |number|
    (0..len - number - 1).map do |num|
      num_next = num + 1
      arr[num], arr[num_next] = arr[num_next], arr[num] if yield arr[num] > arr[num_next]
    end
  end
  arr
end

arr = %w[hi hello hey]

p bubble_sort_by(arr) { |right, left| right <=> left }

p bubble_sort([1, 2, 5, 3, 6, 5, 6, 6, 7, 4, 3])
