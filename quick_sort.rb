def partition(numbers, left, right)
  pivot = numbers[right]
  i = left - 1

  (left...right).each do |j|
    if numbers[j] <= pivot
      i += 1
      numbers[i], numbers[j] = numbers[j], numbers[i]
    end
  end

  partition_index = i + 1
  numbers[partition_index], numbers[right] = numbers[right], numbers[partition_index]
  partition_index
end

def inner_quick_sort(numbers, left, right)
  if left < right
    partition_index = partition(numbers, left, right)
    inner_quick_sort(numbers, left, partition_index - 1)
    inner_quick_sort(numbers, partition_index + 1, right)
  end
end

def quick_sort(numbers)
  inner_quick_sort(numbers, 0, numbers.size - 1)
  numbers
end

p quick_sort([1, 8, 3, 9, 4, 5, 7])
p quick_sort(Array.new(10){ Random.rand(1..1000) })
