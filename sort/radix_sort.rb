def radix_sort(numbers)
  max_num = numbers.max
  place = 1
  while max_num > place
    numbers = count_sort(numbers, place)
    place *= 10
  end
  numbers
end

def count_sort(numbers, place)
  counts = Array.new(10) { 0 }
  result = Array.new(numbers.size) { 0 }

  numbers.each do |num|
    index = num / place % 10
    counts[index] += 1
  end

  (1...10).each do |i|
    counts[i] += counts[i - 1]
  end

  i = numbers.size - 1
  while i >= 0
    index = numbers[i] / place % 10
    result[counts[index] - 1] = numbers[i]
    i -= 1
  end

  result
end

p radix_sort([2, 5, 1, 8, 7, 3])
