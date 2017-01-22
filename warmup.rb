def insertion_sort(arr)
  arr.each_with_index do |el, i|
    insert(arr, i-1, el)
  end
  arr
end

def bubble_sort(arr)
  i = 0
  while i < arr.size
    if arr[i] < arr[i-1] && i > 0
      arr[i], arr[i-1] = arr[i-1], arr[i]
      i = 0
    end
    i += 1
  end
  arr
end

def insert(array, right_index, value)
  i = right_index
  while(i >= 0 && array[i] > value)
    array[i+1] = array[i]
    i -= 1
  end
  array[i+1] = value;
end



p insertion_sort([1,3,7,2,5])
p bubble_sort([1,22, 3,7,2,5, -1])
