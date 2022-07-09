def linear_search(numbers, value)
  numbers.each_with_index do |n, i|
    if n == value
      return i
    end
  end
  -1
end

p linear_search([1,2,3,4,5], 3)
