
# Symbol can be a representation of a method name

# Symbol always comes with a ":" prefix

# demo: list all the built-in method, whose name has *case* inside

# expected output(a list of sumbol, each symbol stands for a method name):
# [:casecmp, :downcase, :upcase, :downcase!, :swapcase, :upcase!, :swapcase!]
p "hello".methods.grep /case/