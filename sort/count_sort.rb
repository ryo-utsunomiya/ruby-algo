def count_sort(numbers)
  counts = Array.new(numbers.max + 1) { 0 }
  result = Array.new(numbers.size) { 0 }

  numbers.each do |num|
    counts[num] += 1
  end

  (1...counts.size).each do |i|
    counts[i] += counts[i - 1]
  end

  i = numbers.size - 1
  while i >= 0
    index = numbers[i]
    result[counts[index] - 1] = numbers[i]
    i -= 1
  end

  result
end

p count_sort([2, 5, 1, 8, 7, 3])
