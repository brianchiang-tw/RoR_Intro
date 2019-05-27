
# Create a stack (Last In First Out)
stack = [];

# push new element
stack << "1"

# push new element
stack.push("2")

# push new element
stack <<  "3"

# print all the element in stack
puts "stack:" + stack.to_s

# pop one element from top
puts "pop element of stack: " + stack.pop

# print all the element in stack
puts "stack:" + stack.to_s


puts "\n\n\n"

# Create a stack (First In First Out)
queue = []

# push new element
queue.push "1"

# push new element
queue << "2"

# push new element
queue.push "3"

# print all the element in queue
puts "queue:" + queue.to_s

# pop one element from bottom
puts queue.shift

# print all the element in queue
puts "queue:" + queue.to_s



puts "\n\n\n"


array = [10, 5, 8, 2]


array.sort!.reverse!
# expected output
# array: [10, 8, 5, 2]
puts "array: " + array.to_s

puts "pick 2 elements from array randomly: " + array.sample(2).to_s


puts "\n\n\n"

# dynamic array extension
array[6] = 100

# array: [10, 8, 5, 2, nil, nil, 100]
puts "array: " + array.to_s