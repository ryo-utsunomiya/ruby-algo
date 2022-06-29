def partition(numbers, low, high)
  i = low - 1
  pivot = numbers[high]
  (low...high).each do |j|
    if numbers[j] <= pivot
      i += 1
      numbers[i], numbers[j] = numbers[j], numbers[i]
    end
  end
  numbers[i + 1], numbers[high] = numbers[high], numbers[i + 1]
  i + 1
end

def _quick_sort(numbers, low, high)
  if low < high
    partition_index = partition(numbers, low, high)
    _quick_sort(numbers, low, partition_index - 1)
    _quick_sort(numbers, partition_index + 1, high)
  end
end

def quick_sort(numbers)
  _quick_sort(numbers, 0, numbers.size - 1)
  numbers
end

p quick_sort([1,8,3,9,4,5,7])
p quick_sort(Array.new(10){ Random.rand(1..1000) })
