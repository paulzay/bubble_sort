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


def bubble_sort_by(ar)
    arr = ar
    lg = 0
    (arr.length - 1).times do |i|
       (arr.length - i).times do |j|
         lg = yield
         arr[j], arr[j+1] = arr[j+1], arr[j] if lg > 1
       end
    end

    arr
end

arr = ["hi", "hello", "hey"]

p bubble_sort_by(arr) {|right, left| right <=> left }


# puts (bubble_sort([1, 2, 5, 3, 6, 5, 6, 6, 7, 4, 3]))
