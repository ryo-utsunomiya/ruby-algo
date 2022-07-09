def gnome_sort(numbers)
  len_numbers = numbers.size
  index = 0
  while index < len_numbers
    if index == 0
      index += 1
    end
    if numbers[index - 1] <= numbers[index]
      index += 1
    else
      numbers[index], numbers[index - 1] = numbers[index - 1], numbers[index]
      index -= 1
    end
  end
  numbers
end

p gnome_sort([2, 5, 1, 8, 7, 3])
