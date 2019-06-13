# object.clone generates a copy of object

demo_array_1 = [*1..5]
demo_array_2 = demo_array_1.clone

# [1, 2, 3, 4, 5]
puts demo_array_1.inspect
# [1, 2, 3, 4, 5]
puts demo_array_2.inspect


# Make a change on demo_array_1
demo_array_1[0] = 99

# [99, 2, 3, 4, 5]
puts demo_array_1.inspect

# clone object keeps unchaged, away from the change of source object
# [1, 2, 3, 4, 5]
puts demo_array_2.inspect


### !!! Take Care !!!
### If source object has a container inside, the rule of "pass by reference" still works

demo_array_A = [*1..5]
demo_array_B = ["B", demo_array_A]

# [1, 2, 3, 4, 5]
puts demo_array_A.inspect
# ["B", [1, 2, 3, 4, 5]]
puts demo_array_B.inspect



demo_array_C = demo_array_B.clone

demo_array_A[0] = 168

# [168, 2, 3, 4, 5]
puts demo_array_A.inspect

# demo_array_B also changes due to the pass-by-reference on demo_array_A, which content is modified beforehand.
# ["B", [168, 2, 3, 4, 5]]
puts demo_array_B.inspect