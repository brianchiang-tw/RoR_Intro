
single_quoted = 'ice cream \n followed by it\'s a party'
double_quoted = "ice cream \n followed by it\'s a party"

# expected output:
# ice cream \n followed by it's a party
puts single_quoted



# expected output:
# ice cream 
#  followed by it's a party
puts double_quoted



def multiply_double_quote_string_placeholder( varA, varB)
    return "#{varA} multiplied by #{varB} equals #{ varA * varB}"
end

# expected output:
# 8 multiplied by 6 equals 48
puts multiply_double_quote_string_placeholder(8, 6)



def multiply_single_quote_string_placeholder( varA, varB)
    return '#{varA} multiplied by #{varB} equals #{ varA * varB}'
end

# expected output:
# #{varA} multiplied by #{varB} equals #{ varA * varB}
puts multiply_single_quote_string_placeholder(8, 6)