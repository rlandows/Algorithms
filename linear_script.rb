def linear_worst_case(array)
  print array.length
end
array = [1,2,3,4]
puts linear_worst_case(array)
array2 = (1..7).to_a
puts linear_worst_case(array2)
array3 = (1..15).to_a
puts linear_worst_case(array3)
array4 = (1..100).to_a
puts linear_worst_case(array4)
array5 = (1..500).to_a
puts linear_worst_case(array5)
array6 = (1..1000).to_a
puts linear_worst_case(array6)
