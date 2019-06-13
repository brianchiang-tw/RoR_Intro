# In general, methods that end in ! indicate that the method will modify the object it's called on.



# method call withoud ! generates a new returned object
array_demo = [*1..10]

array_demo = array_demo.shuffle!

# It would be a random series between 1 to 10
# [4, 8, 10, 6, 7, 9, 1, 2, 3, 5]
puts array_demo.inspect



# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts array_demo.sort.inspect

# [4, 8, 10, 6, 7, 9, 1, 2, 3, 5]
puts array_demo.inspect



# sort! not only carry out sorting to array_demo, but also rearrange elements in-place.
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts array_demo.sort!.inspect

# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts array_demo.inspect