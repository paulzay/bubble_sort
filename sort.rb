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
  new_arr = arr
  (0..len).map do |number|
    (0..len - number - 1).map do |num|
      compare = yield(new_arr[num], new_arr[num + 1])
      new_arr[num], new_arr[num + 1] = new_arr[num + 1], new_arr[num] if compare > 1
    end
  end
  arr
end

arr = %w[hi hello hey]
# unsorted = (1..10).to_a.reverse! , This is different scenario

bubble_sort_by(arr) { |left, right| left.length - right.length }
bubble_sort([1, 2, 5, 3, 6, 5, 6, 6, 7, 4, 3])
