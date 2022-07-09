require_relative '../sort/quick_sort'

def binary_search(numbers, value)
  left, right = 0, numbers.size - 1

  while left <= right
    mid = (left + right) / 2
    if numbers[mid] == value
      return mid
    elsif numbers[mid] < value
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

if __FILE__ == $0
  a = quick_sort(Array.new(50){ Random.rand(1..100) })
  v = Random.rand(1..100)
  p a
  p v
  p binary_search(a, v)
end
