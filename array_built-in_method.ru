
array = [1, 3, 4, 7, 8, 10]

# visit each element and print out
# expected output:
# 1 3 4 7 8 10
array.each { |element| print element.to_s + " " }

puts "\n\n\n"

# Select element with specific condition which is > 5
filter_result = array.select { | element | element > 5 }

# expected output:
# [7, 8, 10]
puts filter_result.to_s


# Select element with specific condition which is < 7 and not even
filter_result = array.select { | element | element < 7 }
                     .reject { | element | element.even? }

# expected output:
# [1, 3]
puts filter_result.to_s



# Multiply each element and plus 1
mapping_result = array.map { |element| element * 2 + 1 }

# expected output:
# [3, 7, 9, 15, 17, 21]
puts mapping_result.to_s