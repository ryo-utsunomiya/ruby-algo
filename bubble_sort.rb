def bubble_sort(numbers)
  (0...numbers.size).each do |i|
    (0...numbers.size - 1 - i).each do |j|
      if numbers[j] > numbers[j + 1]
        numbers[j], numbers[j + 1] = numbers[j + 1], numbers[j]
      end
    end
  end
  numbers
end

p bubble_sort([2, 5, 1, 8, 7, 3])
