a = [10, 20, 30]
b = a

puts "a: " + a.to_s
puts "b: " + b.to_s
puts




b[1] = 90
puts "a: " + a.to_s
puts "b: " + b.to_s
puts

# Note: a also changes
# Reason:
# a is a array(a kind of container)
# b = a means b is a reference(or think of alias) to a
# Any change to b also applys to a automatically.