### reduce

# Create a new value, the new value is generated with reduce formula, by visiting and operating each original element.

## Method_#1: loop
array_demo = [*1..10]

# reduce formula: output = sum( {x, x is an element of container} )

sum_by_loop = 0
array_demo.each do | x |
    sum_by_loop = sum_by_loop + x
end

# 55
puts sum_by_loop.inspect



## Method_#2: filter

# reduce formula: output = sum( {x, x is an element of container} )
sum_by_reduce = array_demo.reduce(0) { | sum, x | ( sum + x ) }

# 55
puts sum_by_reduce.inspect



## More example on reduce

# Find maximum value

max_value = array_demo.reduce do | max, x |
    
    if max > x
        max
    else
        x
    end

end

# 10
puts max_value

# =====================

# Find minimum value

min_value = array_demo.reduce do | min, x |

    if min < x
        min
    else
        x
    end

end

# 1
puts min_value