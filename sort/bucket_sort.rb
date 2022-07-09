require_relative './sertion_sort'

def bucket_sort(numbers)
  bucket_size = numbers.max / numbers.size
  buckets = Array.new(bucket_size + 1){[]}
  numbers.each { |n| buckets[n / bucket_size] << n }
  buckets.map { |b| insertion_sort(b) }.flatten
end

p bucket_sort([1])
p bucket_sort([1, 100, 10])
p bucket_sort([1, 5, 28, 25, 100, 52, 27, 91, 22, 99])
