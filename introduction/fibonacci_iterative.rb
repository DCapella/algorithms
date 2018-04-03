def fib(b)
  b -= 1
  fib_first = 0
  fib_second = 1
  (0..b-1).each do
    temp = fib_first
    fib_first = fib_second
    fib_second = temp + fib_first
  end
  fib_second
end


# test

(1..9).each { |num| puts fib(num) }
