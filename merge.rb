def merge_sort(arr)
  return arr if arr.size == 1
  left  = arr[0, arr.size/2]
  right = arr[arr.size/2, arr.size]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end

p merge_sort([1, 3, 24, 5, 22, -1, 7])
