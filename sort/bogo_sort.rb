def in_order(numbers)
  numbers.each_cons(2).all?{|a, b| a <= b }
end

def bogo_sort(numbers)
  result = numbers.shuffle
  until in_order(result)
    result = result.shuffle
  end
  result
end

p bogo_sort([2,1,3,4,5])
