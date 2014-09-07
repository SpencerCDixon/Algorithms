require 'pry'
array = []

11.times do
  array << rand(1000)
end

def merge_sort(array)
  return array if array.length <= 1

  half = array.size / 2
  left_array = array.take(half)
  right_array = array.drop(half)

  sorted_left = merge_sort(left_array)
  sorted_right = merge_sort(right_array)

  return merge_a(sorted_left, sorted_right)
end


def merge_a(left_array, right_array)
  result = []
  until left_array.empty? || right_array.empty?
    if left_array.first <= right_array.first
      result << left_array.shift
    else
      result << right_array.shift
    end
  end
  return result.concat(left_array).concat(right_array)
end
puts merge_sort(array)
