require "benchmark"

def poorly_written_ruby(arrays)
  combined_array = arrays.flatten
  merge_sort(combined_array)

end

def merge_sort(collection)
   # #1
   if collection.length <= 1
     collection
   else
     # #2
     mid = (collection.length / 2).floor
     left = merge_sort(collection[0..mid - 1])
     right = merge_sort(collection[mid..collection.length])
     # #3
     merge(left, right)
   end
 end

 def merge(left, right)
   if left.empty?
     # #4
     right
   elsif right.empty?
     # #5
     left
   elsif left.first < right.first
     # #6
     [left.first] + merge(left[1..left.length], right)
   else
     # #7
     [right.first] + merge(left, right[1..right.length])
   end
 end

array1 = (1..500).map { rand(1..1500) }
array2 = (1..500).map { rand(1..1500) }
array3 = (1..500).map { rand(1..1500) }
puts poorly_written_ruby([array1,array2,array3])

a = Benchmark.measure do |x|
    poorly_written_ruby([array1,array2,array3])
end

puts a
