
a_hash = { :one => "1" }

# expected output:
# {:one=>"1"}
puts a_hash


# If you try to do it in one step - you get a syntax error
# puts { :one => "1" }

# Ruby interpreter gets confused and thinks { ... } is a Block

# To get around - we can use parenthesis

# expected output:
# {:one=>"1"}
puts ( { :one => "1" } )

# Or drop curly bracket

# expected output:
# {:one=>"1"}
puts one: "1"