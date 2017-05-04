require 'benchmark'
def heap(array,sorted_arr)



  array.each_with_index do |num,idx|
    heapify(array,idx)
  end

  array[0], array[-1] = array[-1], array[0]
  sorted_arr.unshift(array[-1])

   array.delete_at(-1)
  #  sorted_arr << array.pop
   until array.length == 0
     heap(array, sorted_arr)
   end

 sorted_arr

end

def heapify(array, i)
  child = i
  parent = (i - 1)/2

  if array[i] > array[parent] && i > 0
    array[i], array[parent] = array[parent], array[i]
    heapify(array,parent)
  end

end

array = (1..10000).map { rand(1..50) }
puts heap(array, [])

a = Benchmark.measure do |x|
   heap(array, [])

end

puts a
