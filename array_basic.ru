

#                      integer, string, symbol
heterogeneous_array = [   1   , "two" , :three ]

# expected output:
# 1
# two
# three
heterogeneous_array.each do | element | 
    puts element
end

words_array = %w{ What a great day today! }

# expected output:
# day
puts words_array[-2]


# Demo placeholder and array built-in method
# expected output:
# What - today!
puts "#{words_array.first} - #{words_array.last}"



# Demo [] opertator ( method )
# expected output:
# ["great", "day"]
p words_array[-3, 2]



# Demo [ a..b ] range operator with tail-inclusive
# expected output:
# ["great", "day", "today"]
p words_array[ 2..4 ]



# Demo [ a...b ] range operator with tail-exclusive
# expected output:
# ["great", "day"]
p words_array[ 2...4 ]



# Make a string from array elements separated by ','
separator = ','

# expected output:
# What,a,great,day,today!
puts words_array.join( separator )

