def bubble_sort(arr)
  (arr.length - 1).times do |number|
    (arr.length - number - 1).times do |num|
      arr[num], arr[num + 1] = arr[num + 1], arr[num] if arr[num] > arr[num +1]
    end
  end
  arr
end

def bubble_sort_by(arr)
  (arr.length - 1).times do |number|
    (arr.length - number - 1).times do |num|
      arr[num], arr[num + 1] = arr[num + 1], arr[num] if yield(arr[num], arr[num + 1]) > 0
    end
  end
  arr
end

arr = %w[hi hello hey]
unsorted = (1..10).to_a.reverse!
bubble_sort_by(unsorted) { |left, right| left - right }
bubble_sort_by(arr) { |left, right| left.length - right.length }
bubble_sort([1, 2, 5, 3, 6, 5, 6, 6, 7, 4, 3])
