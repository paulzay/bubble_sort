def bubble_sort(arr)
  (0...arr.length - 1).map do |number|
    (0...len - number).map do |num|
      arr[num], arr[num + 1] = arr[num + 1], arr[num] if arr[num] > arr[num +1]
    end
  end
  arr
end

def bubble_sort_by(arr)
  new_arr = arr
  (0...new_arr.length - 1).map do |number|
    (0...new_arr.length - number).map do |num|
      new_arr[num], new_arr[num + 1] = new_arr[num + 1], new_arr[num] if yield(new_arr[num], new_arr[num + 1]) > 0
    end
  end
  new_arr
end

arr = %w[hi hello hey]
unsorted = (1..10).to_a.reverse!
bubble_sort_by(unsorted) { |left, right| left - right }
bubble_sort_by(arr) { |left, right| left.length - right.length }
bubble_sort([1, 2, 5, 3, 6, 5, 6, 6, 7, 4, 3])
