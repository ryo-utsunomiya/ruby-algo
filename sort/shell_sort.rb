def shell_sort(numbers)
  len_numbers = numbers.size
  gap = len_numbers / 2
  while gap > 0
    (gap...len_numbers).each do |i|
      temp = numbers[i]
      j = i
      while j >= gap and numbers[j - gap] > temp
        numbers[j] = numbers[j - gap]
        j -= gap
      end
      numbers[j] = temp
    end
    gap /= 2
  end
  numbers
end

p shell_sort([2, 5, 1, 8, 7, 3])
