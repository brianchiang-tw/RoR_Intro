
# a tail-include range: 1 ~ 5
range_a = 1..5

# expected output
# 5
puts range_a.max



# expected output
# true
puts range_a.include? 2



# Does range 1...10 include 10
# false (No)
puts (1...10) === 10



# Does range 1...10 include 9.9
# true (Yes)
puts (1...10) === 9.9



# Does range 'a'...'z' include 'z'
# false (No)
puts ('a'...'z') === 'z' 



# Does range 'a'...'z' include 'y'
# true (Yes)
puts ('a'...'z') === 'y'



# Randomly pick two elements from range 'a'..'z'
puts ('a'..'z').to_a.sample(2).to_s



# Combine range with case...when...else syntax to conducta a judgement

# expected output:
# teenager at heart
age = 60
case age
    when 0..12 then puts "Kids"
    when 13..99 then puts "teenager at heart"
    else puts "long life"
end


