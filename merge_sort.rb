def merge_sort(numbers)
  if numbers.size <= 1
    return numbers
  end

  center = numbers.size / 2
  left = numbers[0...center]
  right = numbers[center...numbers.size]

  merge_sort(left)
  merge_sort(right)

  i = j = k = 0
  while i < left.size and j < right.size
    if left[i] < right[j]
      numbers[k] = left[i]
      i += 1
    else
      numbers[k] = right[j]
      j += 1
    end
    k += 1
  end

  while i < left.size
    numbers[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.size
    numbers[k] = right[j]
    j += 1
    k += 1
  end

  numbers
end

p merge_sort([1, 8, 3, 9, 4, 5, 7])
p merge_sort(Array.new(10){ Random.rand(1..1000) })

