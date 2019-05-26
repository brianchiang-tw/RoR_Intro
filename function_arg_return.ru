
def add_1( x, y)
    (x + y)
end



def add_2( x, y)
    return (x + y)
end



def divide( x, y)
    return "Division by zero is not allowed" if 0 == y 
    return (x/y)
end

puts add_1( 3, 5 )
puts add_2( 3, 5 )

puts divide( 12, 4)
puts divide( 12, 0)