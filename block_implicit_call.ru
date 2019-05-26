
def block_call_implicit
    return "No block passed in" unless block_given?
    yield # implicitly call the block
    yield # implicitly call the block
end


# expected output:
# Implicit Block Call. Implicit Block Call. 
puts block_call_implicit { print "Implicit Block Call. "}

# expected output:
# No block passed in
puts block_call_implicit