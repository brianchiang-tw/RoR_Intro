### filter

# Create a new container, each new element is selected by filter formula from the original one

## Method_#1: loop
array_demo = [*1..10]

# filter formula: y = { x , x is even }
array_output = Array.new

array_demo.each do | x |
    array_output.push( x ) if 0 == x % 2
end

# [2, 4, 6, 8, 10]
puts array_output.inspect



## Method_#2: filter

# filter formula: y = { x , x is even }
filter_output = array_demo.select{ |x|  ( 0 == x%2 ) }

# [2, 4, 6, 8, 10]
puts filter_output.inspect