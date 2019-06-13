def test(x)
    x = 500
    return x
end


x = 100

test (x)


# expected output: x: 100
puts "x: " + x.to_s 

# Recall: variable is pass by value on assignment



def test_container( x )
    x[0] = nil
end

array_demo = [*1..5]


# expected output:
# array_demo: [1, 2, 3, 4, 5]
puts "array_demo: "+array_demo.to_s



test_container( array_demo )



# expected output:
# array_demo: [nil, 2, 3, 4, 5]
puts "array_demo: "+array_demo.to_s

# Recall: Container is pass by refernce on assignment

