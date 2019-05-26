
# expected output:
# "Hello World!"
1.times { puts"Hello World!" }




# | index | acts as parameter list, like function's parameter list

# expected output:
# 0
# 1
# 2
# 3
# 4
5.times do | index |
    puts index      
end

puts "\n\n\n"

# expected output:
# 1
2. times { |index| puts index if index > 0 }


