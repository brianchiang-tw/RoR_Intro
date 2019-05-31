
array = [*(1..10)]

singleNumber = 50

array.each do | singleNumber |
    local_demo_var_in_block = 99
    
    print singleNumber.to_s + " "
end


# access to "local_demo_var_in_block" will raise NameError of 
# undefined local variable or method `local_demo_var'

# puts local_demo_var_in_block



# newline
puts "\n"

# expected output:
# 50
puts singleNumber



# newline
puts "\n"

# a offset variable outside do ... end block
offset = 5 

array.each do | singleNumber; offset |

    # a offset variable inside do ... end block 
    offset = 100

    # expected output:
    # 101 102 103 ... 110
    print "#{singleNumber+offset} "

end



# newline
puts "\n"



# expected output:
# 5
puts offset