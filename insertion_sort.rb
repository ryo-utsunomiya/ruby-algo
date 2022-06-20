def insertion_sort(numbers)
  len_numbers = numbers.size
  (1...len_numbers).each do |i|
    temp = numbers[i]
    j = i - 1
    while j >= 0 && numbers[j] > temp
      numbers[j + 1] = numbers[j]
      j -= 1
    end
    numbers[j + 1] = temp
  end
  numbers
end

p insertion_sort([2, 5, 1, 8, 7, 3])
