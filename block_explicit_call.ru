
def block_call_explicit( &blockParam )
    return "No block passed in" if blockParam.nil?
    blockParam.call # explicitly call the block
    blockParam.call # explicitly call the block
end

# expected output:
# Explicit Block Call. Explicit Block Call.
puts block_call_explicit { print "Explicit Block Call. "}

# expected output:
# No block passed in
puts block_call_explicit