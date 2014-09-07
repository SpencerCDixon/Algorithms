require 'pry'

# array = []
# 11.times do
#   array << rand(1000)
# end

array = [100, 50, 200, 600, 350, 120, 800, 400]



def partition(array)
  pivot = array.pop
  left = []
  right = []

  array.each do |x|
    x > pivot ? right.push(x) : left.push(x)
  end

  right.unshift(pivot)
  return (left + right)
end

puts partition(array)
