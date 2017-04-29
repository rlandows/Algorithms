def binary_search_recursive(collection, value, low, high)

  mid = (low + high)/2

  if low > high
    return -1
  end

  if value == collection[mid]
    return mid
  elsif value < collection[mid]
    return binary_search_recursive(collection,value,0, mid)
  elsif value > collection[mid]
    return binary_search_recursive(collection,value, (mid+1), high)
  end
end





array = [1,2,3,4,5,6,7,8,9,11,14,16]
puts binary_search_recursive(array, 5, 0, array.length - 1)
#returns 4

array2 = [5,8,10,12,15,96,111]
puts binary_search_recursive(array2, 10, 0, array.length - 1)
#returns 2

array3 = [1,2,3,4,5,6,7,8,9,15,20]
puts binary_search_recursive(array3, 20, 0, array.length - 1)

array4 = [5,10,15,20,25,30]
puts binary_search_recursive(array4, 5, 0, array.length - 1)
