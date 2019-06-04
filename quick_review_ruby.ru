
# Ruby is a kind of dynamic typing language


# Basic variable type

### Integer
# Any integral value is Fixnum object

# expexted ouput:
# Fixnum
# Fixnum
# Fixnum
# Fixnum
puts 5.class
puts -99.class
puts 5201314.class
puts 0.class



### Float
# Any floating number is a Float object

# expected output:
# Float
# Float
# Float
puts 12.345.class
puts -66.55.class
puts 0.0.class



### String
# Any content enclose by single or double quotation mark is String
# Any content generated from .to_S is String

# expected output:
# String
# String
# String
# String
# String
# String
# String
puts "12345".class
puts '-6789'.class
puts '99.99'.class
puts "Nice to meet you".class
puts 'We love ruby <3'.class
puts 12345.to_s.class
puts 99.99.to_s.class

# String can be concatenated by using '+' operator
greeting = "Hello"
name = ", Mr./Ms. Ruby."

# expected output:
# Hello, Mr./Ms. Ruby
puts greeting + name

count = 1
sentence = ' apple a day, keeps the doctor away.'

# expeceted output:
# 1 apple a day, keeps the doctor away.
puts 1.to_s + sentence


## Practical built-in function on String
text = 'Dog'

# expected output:
# Dog
puts text

# expected output:
# goD
puts text.reverse

# expected output:
# 3
puts text.length

# expected output:
# DOG
puts text.upcase

# expected output:
# dog
puts text.downcase


## Place holder #{placeHolderName} is also supportd on String with double quotation mark
action = "study"

place = "library"

# expected output:
# We study at the library.
puts "We #{action} at the #{place}."


## Note: String enclosed with single quotation mark is output as raw content

# expected output:
# We #{action} at the #{place}.
puts 'We #{action} at the #{place}.'



### Ruby is object oriented completely
# We have class function, object function, but we don't have global function like C/C++.

# expected output:
# INTERACTIVE RUBY
puts "Interactive Ruby".upcase

# expected output:
# 99
puts -99.abs

# expected output:
# Fixnum
puts 66.class

# expected output:
# We are good to go. : )
# We are good to go. : )
2.times do
    puts "We are good to go. : )"
end


### Local variable

## Naming convention of local variable is starting with lowercase character

actor = "Tom Cruise"
movie = "Top Gun"

# expected output:
# Tom Cruise is the first leading actor of Top Gun.
puts "#{actor} is the first leading actor of #{movie}."



### Type conversion

## Use .to_s to conducts a conversion into String
## Use .to_i to conducts a conversion into Integer
## Use .to_f to conducts a conversion into Float

# Note the truncation of invliad part for number(e.g., cm) during conversion
x = "99.8 cm"

# expected output:
# 99.8 cm
# String
puts x
puts x.class

# expected output:
# 99
# Fixnum
puts x.to_i
puts x.to_i.class

# expected output:
# 99.8
# Float
puts x.to_f
puts x.to_f.class



### Constant

## Naming convention of Constnat variable is starting with uppercase character
Demo_constant = 100

# expected output:
# 100
puts Demo_constant

# This value assignment would raise warning in Interactive Ruby (IRB)
# warning: already initialized constant Demo_constant
Demo_constant = 2

# expected output:
# 2
puts Demo_constant

# expected output: (It would not be the same because of different Ruby version installed)
# 2.3.3
puts RUBY_VERSION

# expected output:
# i386-mingw32: (It would not be the same because of different Operation System in computer)
puts RUBY_PLATFORM



### Printing to Console

## puts - standard Ruby method to print string to console (as in put string)

# Add a new line after the printed string
# Similar to System.out.println() in Java
# Used for most of the examples
# "puts obj" is equivalent to "puts obj.to_s"

## p - prints out internal representation of an object

# debbuger-style output
# "p obj" is equivalent to "put obj.inspect"

# p "Got ot"
# => Got it



### NIL (like the NULL in other programming language)

# expected output:
# nil
p nil


# expected output:
# NilClass
p nil.class


# expected output:
# false
p 100.nil?


# expected output:
# true
p nil.nil?


# expected output:
# false
p nil == true


# expected output:
# false
p nil == false


# expected output:
# true
p nil == nil

### Ture/False

# true/false judgement in Ruby

# "false" and "nil object" are false

# Everything else is True

# Example:

# expected output:
# 0 is true
# puts "0 is true" if 0                           # 0 is true

# expected output:
# string false is true
# puts "string false is true" if "false"          # "false" is true

# no output:
# puts "boolean false is false" if false          # boolean false is false

# expected output:
# empty string is true
# puts "empty string is true" if ""               # empty string is true

# expected output:
# string nil is true
# puts "string nil is true" if "nil"              # string nil is true

# no output:
# puts "absence of object nil is false" if nil    # absence of object nil is false



### Comment syntax in Ruby

# this is a single line comment

=begin

    These are multi line comments
    Line 2
    Line 3
    ...
    
=end



### Symbol

# Symbol is a immutable identification name in Ruby (it is not a string)

# String
text = "a_demo_for_ruby_symbol"
puts text

# symbol
:a_demo_for_ruby_symbol
puts :a_demo_for_ruby_symbol

# expected output
# true
puts text == "a_demo_for_ruby_symbol"

# expected output
# false
puts text == :a_demo_for_ruby_symbol

# expeceted output:
# false
puts :a_demo_for_ruby_symbol == "a_demo_for_ruby_symbol"

# expected output:
# true
puts :a_demo_for_ruby_symbol.to_s == "a_demo_for_ruby_symbol"

# expected output
# String
puts text.class

# expected output
# Symbol
puts :a_demo_for_ruby_symbol.class



### Array

# Mixure of elements with differnt type is allowed

# expected output:
# 0
# 1.23
# 3
# four
demo_array = [0, 1.23, "3", :four]
puts demo_array


## Note: 
# '.inspect' gives a more intuitive description on output

# expected output:
# [0, 1.23, "3", :four]
puts demo_array.inspect


# Create an empty array with [] operator
array_1 = []

# expected output:
# []
puts array_1.inspect


# Create an empty array with Array's constructor
array_2 = Array.new

# expected output:
# []
puts array_2.inspect


# Create an array with Array's constructor, given array length and default value
array_length = 5
array_default_element_value = 9
array_3 = Array.new(array_length, array_default_element_value)

# expected output:
# [9, 9, 9, 9, 9]
puts array_3.inspect


# Create an array with double dot .. range operator
array_4 = [*1..5]

# expected output
# [1, 2, 3, 4, 5]
puts array_4.inspect


# Create an array with triple dot ... range operator (tail-exclusive)
array_5 = [*6...11]

# expected output
# [6, 7, 8, 9, 10]
puts array_5.inspect

# Remember to add a * to generate an array from double dot or triple dot operator
array_mistake_1 = [1..5]

# output:
[1..5]
puts array_mistake_1.inspect

array_mistake_2 = [6...10]
# output:
# [6...10]
puts array_mistake_2.inspect

# Create an array with given mathematical formula
# f(x) = 2*x + 1
array_6 = Array.new(5) { |index| index*2 + 1 }

# expected output:
# [1, 3, 5, 7, 9]
puts array_6.inspect