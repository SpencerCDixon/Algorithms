require 'pry'
require 'benchmark'

array = []
1_000_000.times do
  array << rand(1000)
end

# array = [100, 50, 200, 600, 350, 120, 800, 400]

def quick_sort(array)
  return array if array.length <= 1
  # Here is my pivot
  pivot = array.pop # define pivot to always be last element in array
  left = []
  right = []

  array.each do |x|
    x >= pivot ? right.push(x) : left.push(x)
  end

  sorted_array = []
  sorted_array << quick_sort(left).push(pivot) # add pivot to beg of the right half
  sorted_array << quick_sort(right)
  sorted_array.flatten!

end

puts Benchmark.measure { puts quick_sort(array) }
