require 'benchmark'
def bucket_sort(array, n)

  min = array.min
  max = array.max

  bucket_count = ((max - min)/n).floor
  buckets = Array.new(bucket_count) { [] }


  array.each do |num|

      which_bucket = (num/bucket_count).floor
      buckets[which_bucket].push(num)

  end



  buckets.map! do |arr|
      insertion_sort(arr)
  end


   buckets.flatten.compact
end


def insertion_sort(collection)
   # #1
   sorted_collection = [collection.delete_at(0)]

   for val in collection
     sorted_collection_index = 0
     # #2
     while sorted_collection_index < sorted_collection.length
       if val <= sorted_collection[sorted_collection_index]
         # #3
         sorted_collection.insert(sorted_collection_index, val)
         break
       elsif sorted_collection_index == sorted_collection.length - 1
         # #4
         sorted_collection.insert(sorted_collection_index + 1, val)
         break
       end

       sorted_collection_index += 1
     end
   end

   sorted_collection
 end

#  arr = [9,0,1,8,5,2,10,15,30,21,15,18,11,20,25,30,37]
# puts bucket_sort(arr,4)
array2 = (1..5000).map { rand(1..50) }
puts bucket_sort(array2, 4)

a = Benchmark.measure do |x|
   bucket_sort(array2, 4)
end

puts a
