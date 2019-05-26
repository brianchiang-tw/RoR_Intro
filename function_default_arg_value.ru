
def factorial( n )
    return n == 0? 1 : ( n * factorial( n-1 ) )
end

def factorial_default_arg( n = 5 )
    return n == 0? 1 : ( n * factorial_default_arg(n-1) )
end



puts factorial 5
puts factorial(5)
puts factorial_default_arg(5)
puts factorial_default_arg
puts factorial_default_arg(3)