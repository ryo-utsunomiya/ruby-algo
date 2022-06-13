def comb_sort(numbers)
  len_numbers = numbers.size
  gap = len_numbers
  swapped = true

  while gap != 1 || swapped
    swapped = false

    gap = (gap / 1.3).to_i
    if gap < 1
      gap = 1
    end

    (0...len_numbers - gap).each do |i|
      if numbers[i] > numbers[i + gap]
        numbers[i], numbers[i + gap] = numbers[i + gap], numbers[i]
        swapped = true
      end
    end
  end

  numbers
end

p comb_sort([2, 5, 1, 8, 7, 3])
