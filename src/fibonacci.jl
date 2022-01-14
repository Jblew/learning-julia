using Printf

fib(n::Integer) = n ≤ 2 ? one(n) : fib(n-1) + fib(n-2)

argument = 10
result = fib(argument)
@printf "Fibonacci of %d is %d\n" argument result