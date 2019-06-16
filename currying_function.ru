def add(x)
    
    return ->(y){ x + y }

end



add_5 = add(5)

add_10 = add(10)




output = add_5.call(3)
# 8 = 5 + 3
puts output


output = add_10.call(3)
# 13 = 10 + 3
puts output