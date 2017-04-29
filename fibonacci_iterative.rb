def fib(n)
  arr = [0, 1]

  if n == 0
    return 0
  end

  if n == 1
    return 1
  end

  while arr.length  < n + 1
    arr.push(arr[-1] + arr[-2])
  end

  arr[-1]

end




puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)
# puts fib(20)
