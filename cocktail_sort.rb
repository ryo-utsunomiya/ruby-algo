def cocktail_sort(numbers)
  head = 0
  tail = numbers.size - 1
  swapped = true

  while swapped
    swapped = false

    (head...tail).each do |i|
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        swapped = true
      end
    end

    break unless swapped

    swapped = false
    tail -= 1

    (tail-1...head-1).step(-1).each do |i|
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        swapped = true
      end
    end

    head += 1
  end

  numbers
end

p cocktail_sort([2, 5, 1, 8, 7, 3])
