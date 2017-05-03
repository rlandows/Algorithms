require 'benchmark'

def quick_sort(collection,start,ending)
  if start >= ending
    return collection

  end

  wall = part(collection, start, ending)
  quick_sort(collection, start, (wall - 1))
  quick_sort(collection, (wall + 1), ending)

end


def part(collection, start, ending)
  pivot = collection[ending]
  index = start

  (start...ending).each do |num|
    # puts "this is 1 #{collection[num]}"
    # puts "this is 2 #{pivot}"
    if collection[num] <= pivot
      collection[index], collection[num] = collection[num], collection[index]
      index += 1
    end
  end

  collection[index], collection[ending] = collection[ending], collection[index]
  index



end
array = [3,2,6,7,8,6,5,18,11,21,9]
array2 = (1..5000).map { rand(1..50) }
puts quick_sort(array2,0,array2.length - 1)

a = Benchmark.measure do |x|
  quick_sort(array2,0,array2.length - 1)
end

puts a
