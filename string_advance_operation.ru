
my_name = ' tom.cruise'

# expected output:
# 'Tom.cruise'
puts my_name.lstrip.capitalize

# Use "p obj" to see the raw content of my_name

# expected output:
# " tom.cruise"
p my_name

# call built-in method left hand side strip and modify the original content itself
my_name.lstrip!

# expected output:
# "tom.cruise"
p my_name


# Use index operator to modify the first and the second character
my_name[0..1] = 'Ki'

# expected output
# "Kim.cruise"
p my_name


# Create a multi-line string object
current_weather = %Q{It's a hot day outside
Grab your unbrellas...}



# expected output
# It's a rainy day outside
# Grab your unbrellas...

current_weather.lines do | line |

    # Substitute 'hot' with 'rainy'
    line.sub! 'hot', 'rainy'

    # output each line, which is strip by built-in method
    puts "#{line.strip}"

end


### Ruby API reference:
#   https://ruby-doc.org/