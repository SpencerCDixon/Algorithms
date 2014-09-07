require 'pry'
array = (1..100).to_a.shuffle

def merge(array1, start, middle, e)
  n1 = m - s + 1
  n2 = e - m

  array2 = array1[start..middle].push(10**10)
  array3 = array1[(middle + 1)..e].push(10**10)

  i = 0
  j = 0
  k = 0

  until k == array1.size - 1
    if array2[i] <= array3[j]
      array1[k] = array2[i]
      i += 1
    elsif array2[i] > array3[j]
      array1[k] = array3[j]
      j += 1
    end
  end
end

def merge_sort(array, s, e)
  if s >= e
    return array
  end
  m = (s + e)/2
  merge_sort(array, s, e)
  merge_sort(array, m, e)
  merge(array, s, m, e)
end

merge_sort(array, 0, 99)
binding.pry
