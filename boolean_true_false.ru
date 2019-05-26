
# true/false judgement in Ruby

# "false" and "nil object" are false

# Everything else is True

puts "0 is true" if 0                           # 0 is true
puts "string false is true" if "false"          # "false" is true
puts "boolean false is false" if false          # boolean false is false
puts "empty string is true" if ""               # empty string is true
puts "string nil is true" if "nil"              # string nil is true
puts "absence of object nil is false" if nil    # absence of object nil is false