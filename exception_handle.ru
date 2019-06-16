
### Explain and demo the "raise" syntax

# expected output:
# Manually raise an error. (RuntimeError)
# Demo raise syntax

# puts "Demo raise syntax"
# raise "Manually raise an error."
# puts "sentence after raise will not be executed"



### Explain and demo the "begin...rescue...end" syntax

# expected output:
# Catch one error
# Manually raise an error
# Demo flow reach the end.

# begin
#     # do some job here
#     raise "Manually raise an error"

# rescue => e 
#     puts "Catch one error"
#     puts e.message

# end

# puts "Demo flow reach the end."



### Explain and demo the "begin...rescue...ensure...end" suntax


# Catch one error
# Manually raise an error
# The code block after ensure will be executed no matter we have an exception or not

# begin
#     # do some job here
#     raise "Manually raise an error"

# rescue => e
#     puts "Catch one error"
#     puts e.message
# ensure
#     puts "The code block after ensure will be executed whether we have an exception or not"

# end
