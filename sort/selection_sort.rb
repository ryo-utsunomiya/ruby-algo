def selection_sort(numbers)
  len_numbers = numbers.size

  (0...len_numbers).each do |i|
    min_idx = i
    (i + 1...len_numbers).each do |j|
      if numbers[min_idx] > numbers[j]
        min_idx = j
      end
    end
    numbers[i], numbers[min_idx] = numbers[min_idx], numbers[i]
  end

  numbers
end

p selection_sort([2, 5, 1, 8, 7, 3])
