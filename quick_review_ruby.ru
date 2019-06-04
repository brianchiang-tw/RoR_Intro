
# Ruby is a kind of dynamic typing language


# Basic variable type

### Integer
# Any integral value is Fixnum object

# expexted ouput:
# Fixnum
# Fixnum
# Fixnum
# Fixnum

=begin
puts 5.class
puts -99.class
puts 5201314.class
puts 0.class
=end


### Float
# Any floating number is a Float object

# expected output:
# Float
# Float
# Float

=begin
puts 12.345.class
puts -66.55.class
puts 0.0.class
=end


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

=begin
puts "12345".class
puts '-6789'.class
puts '99.99'.class
puts "Nice to meet you".class
puts 'We love ruby <3'.class
puts 12345.to_s.class
puts 99.99.to_s.class
=end

# String can be concatenated by using '+' operator
greeting = "Hello"
name = ", Mr./Ms. Ruby."

# expected output:
# Hello, Mr./Ms. Ruby
=begin
puts greeting + name
=end

count = 1
sentence = ' apple a day, keeps the doctor away.'

# expeceted output:
# 1 apple a day, keeps the doctor away.

=begin
# puts 1.to_s + sentence
=end

## Practical built-in function on String
text = 'Dog'

=begin
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
=end

## Place holder #{placeHolderName} is also supportd on String with double quotation mark
action = "study"

place = "library"

=begin
# expected output:
# We study at the library.
puts "We #{action} at the #{place}."


## Note: String enclosed with single quotation mark is output as raw content

# expected output:
# We #{action} at the #{place}.
puts 'We #{action} at the #{place}.'
=end



### Ruby is object oriented completely
# We have class function, object function, but we don't have global function like C/C++.

# expected output:
# INTERACTIVE RUBY
# puts "Interactive Ruby".upcase

# expected output:
# 99
# puts -99.abs

# expected output:
# Fixnum
# puts 66.class

# expected output:
# We are good to go. : )
# We are good to go. : )
# 2.times do
#     puts "We are good to go. : )"
# end


### Local variable

## Naming convention of local variable is starting with lowercase character

# actor = "Tom Cruise"
# movie = "Top Gun"

# expected output:
# Tom Cruise is the first leading actor of Top Gun.
# puts "#{actor} is the first leading actor of #{movie}."



### Type conversion

## Use .to_s to conducts a conversion into String
## Use .to_i to conducts a conversion into Integer
## Use .to_f to conducts a conversion into Float

# Note the truncation of invliad part for number(e.g., cm) during conversion
# x = "99.8 cm"

# expected output:
# 99.8 cm
# String
# puts x
# puts x.class

# expected output:
# 99
# Fixnum
# puts x.to_i
# puts x.to_i.class

# expected output:
# 99.8
# Float
# puts x.to_f
# puts x.to_f.class



### Constant

## Naming convention of Constnat variable is starting with uppercase character
# Demo_constant = 100

# expected output:
# 100
# puts Demo_constant

# This value assignment would raise warning in Interactive Ruby (IRB)
# warning: already initialized constant Demo_constant
# Demo_constant = 2

# expected output:
# 2
# puts Demo_constant

# expected output: (It would not be the same because of different Ruby version installed)
# 2.3.3
# puts RUBY_VERSION

# expected output:
# i386-mingw32: (It would not be the same because of different Operation System in computer)
# puts RUBY_PLATFORM



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
# p nil


# expected output:
# NilClass
# p nil.class


# expected output:
# false
# p 100.nil?


# expected output:
# true
# p nil.nil?


# expected output:
# false
# p nil == true


# expected output:
# false
# p nil == false


# expected output:
# true
# p nil == nil

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
# text = "a_demo_for_ruby_symbol"
# puts text

# symbol
# :a_demo_for_ruby_symbol
# puts :a_demo_for_ruby_symbol

# expected output
# true
# puts text == "a_demo_for_ruby_symbol"

# expected output
# false
# puts text == :a_demo_for_ruby_symbol

# expeceted output:
# false
# puts :a_demo_for_ruby_symbol == "a_demo_for_ruby_symbol"

# expected output:
# true
# puts :a_demo_for_ruby_symbol.to_s == "a_demo_for_ruby_symbol"

# expected output
# String
# puts text.class

# expected output
# Symbol
# puts :a_demo_for_ruby_symbol.class



### Array

# Mixure of elements with differnt type is allowed

# expected output:
# 0
# 1.23
# 3
# four
# demo_array = [0, 1.23, "3", :four]
# puts demo_array


## Note: 
# '.inspect' gives a more intuitive description on output

# expected output:
# [0, 1.23, "3", :four]
# puts demo_array.inspect


# Create an empty array with [] operator
# array_1 = []

# expected output:
# []
# puts array_1.inspect


# Create an empty array with Array's constructor
# array_2 = Array.new

# expected output:
# []
# puts array_2.inspect


# Create an array with Array's constructor, given array length and default value
# array_length = 5
# array_default_element_value = 9
# array_3 = Array.new(array_length, array_default_element_value)

# expected output:
# [9, 9, 9, 9, 9]
# puts array_3.inspect


# Create an array with double dot .. range operator
# array_4 = [*1..5]

# expected output
# [1, 2, 3, 4, 5]
# puts array_4.inspect


# Create an array with triple dot ... range operator (tail-exclusive)
# array_5 = [*6...11]

# expected output
# [6, 7, 8, 9, 10]
# puts array_5.inspect

# Remember to add a * to generate an array from double dot or triple dot operator
# array_mistake_1 = [1..5]

# output:
# [1..5]
# puts array_mistake_1.inspect

# array_mistake_2 = [6...10]
# output:
# [6...10]
# puts array_mistake_2.inspect

# Create an array with given mathematical formula
# f(x) = 2*x + 1
# array_6 = Array.new(5) { |index| index*2 + 1 }

# expected output:
# [1, 3, 5, 7, 9]
# puts array_6.inspect

# Create a 2D array of dim = (3, 5) with default value
# array_7 = Array.new(5){ [1, 2, 3] }

# expected output:
# [[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]
# puts array_7.inspect



## Basic operation of array


# Little story: CMYK color model is a subtractive color model, used in color priniting process.
# C for Cyan
# M for Magenta
# Y for Yellow
# array_color = ["Cyan", "Magenta", "Yellow"]

# Adding an element into array_color by calling object method
# array_color.push("Black")

# Adding an element into array_color by using << operator
# array_color << "White"

# expected output:
# ["Cyan", "Magenta", "Yellow", "Black", "White"]
# puts array_color.inspect


# Pop the tail element of an array
# expected output:
# White
# puts array_color.pop

# expected output:
# Black
# puts array_color.last

# expected output:
# ["Cyan", "Magenta", "Yellow", "Black"]
# puts array_color.inspect



## Visit each element of an array

# expected output
# We all love Cyan. : )
# We all love Magenta. : )
# We all love Yellow. : )
# We all love Black. : )

# array_color.each do |element|
    # puts "We all love " + element + ". : )"
# end



### Hash

# A kind of data structure with a set of key-value pairs, like the map in C++, dictionary in Python, HashMap in Java

# sound_of_animal = { :dog => "bark", :cat => "meow", :horse => "neigh", :cows => "moo" }

# expected output:
# "meow"
# puts sound_of_animal[:cat].inspect

## Visiting a non-exist key would return nil (i.e., absence of object)
# expected output:
# nil
# puts sound_of_animal[:bird].inspect


## Adding a new key-value pair into Hash
# sound_of_animal[:bird] = "chirp"

# expected output:
# {:dog=>"bark", :cat=>"meow", :horse=>"neigh", :cows=>"moo", :bird=>"chirp"}
# puts sound_of_animal.inspect

## Deleting a kay-value pair from Hash
# sound_of_animal.delete(:bird)

# expected output:
# {:dog=>"bark", :cat=>"meow", :horse=>"neigh", :cows=>"moo"}
# puts sound_of_animal.inspect


## Visit each element of an array
# dog sounds like bark. >//<
# cat sounds like meow. >//<
# horse sounds like neigh. >//<
# cows sounds like moo. >//<
# bird sounds like chirp. >//<

# sound_of_animal.each do | key, value |
#     puts "#{key} sounds like #{value}. >//<"
# end


## Create a Hash by constructor

# emoji = Hash.new

# expected output
# {}
# puts emoji.inspect

# 0 is set to be the default value of non-exist key-value pair
# emoji = Hash.new(0)

# expected output
# 0
# puts emoji['happy']

# "Default Hash Value" is set to be the default value of non-exist key-value pair
# emoji = Hash.new("Default Hash Value")

# expected output
# {}
# puts emoji


# :happy's value is not created, then "Default Hash Value" is returned.
# puts emoji[:happy]


# Adding 2 key-value pairs as below
# emoji[:happy] = " : ) "

# emoji[:shy] = " >//< "


# expected output
# : ) 
# puts emoji[:happy]

# expected output
#  >//< 
# puts emoji[:shy]



### Flow Control

# expected output:
# false
# puts 90 > 99


# expected output:
# false
# puts 90 > 99


# expected output:
# false
# puts 90 >= 99


# expected output:
# true
# puts 90 <= 99


# expected output:
# flase
# puts 90 == 99


# expected output:
# true
# puts 90 != 99


# expected output:
# true
# puts true && true


# expected output:
# true
# puts false && true



### If ... elsif ... else ... end syntax

# price = 750

# if price > 1000
#     puts "High"
# elsif price > 250
#     puts "medium"
# else
#     puts "low"
# end


## A concise syntax for condition judgement in one line
# temperature = 32
# overHeatWarningMessage = true
# expected output:
# It is hot today.
# puts "It is hot today." if temperature >= 30 && overHeatWarningMessage


## Ternary operator of condition judgement
# condition ? true_expression : false_expression


# temperature >= 30 && overHeatWarningMessage ? msg =  "It's hot." : msg =  "It's warm." 
# expected output
# It's hot.
# puts msg



### Case ... when ... end syntax ( like Case ... switch ... in other programming language )

# person = ["Tom Cruise","Chiling Lin","Jay Chou"]

# Pick one name from person randomly
# name = person.sample(1).to_s

# Remove the square breacket[] and double quotation mark """ of name
# name = name[2..-3]

# expected output:
# a name picked from person array
# puts name

#puts name.class
# case name
#     when "Tom Cruise"
#         puts 'The first leading actor of Top Gun.'
#     when "Chiling Lin"
#         puts 'The first super model in Taiwan.'
#     when "Jay Chou"
#         puts 'One of the best singer and composer in Asian pop music.'
#     else
#         puts 'Great!'
# end



### Iteration syntax

=begin

## For loop

puts "#1. For loop demo: \n"

# Recall:
# head..tail, double dot operator is tail-inclusive
# head...tail, triple dot operator is tail-exclusive 

# expected output:
# 1, 2, 3, 4, 5
for index in 1..5
    print index
    if index != 5
        print ", "
    else
        print "\n"
    end

    # loop index is auto increased in for loop with dot operator

end

# Note: the variable of for ... loop could be accessed outside the loop scope

# expected output:
# latest value of index: 5
puts "latest value of index: " + index.to_s
puts "\n\n\n"



## While loop

puts "#2. While loop demo: \n"

# expected output:
# 1, 2, 3, 4, 5

index = 1
while index <= 5 do
    print index

    if index != 5
        print ", "
    else
        print "\n"
        # auto exit from loop, controller by until ... condition judgement
    end

    # update loop index
    index += 1
end

# expected output:
# latest value of index: 6
puts "latest value of index: " + index.to_s
puts "\n\n\n"


## until ... do ... end iteration

puts "#3. until ... do ... end iteration demo: \n"

# expected output:
# 1, 2, 3, 4, 5

index = 1
until index > 5 do
    print index

    if index != 5
        print ", "
    else
        print "\n"

        # auto exit from loop, controller by until ... condition judgement
        
    end

    # update loop index
    index += 1
end

# expected output:
# latest value of index: 6
puts "latest value of index: " + index.to_s
puts "\n\n\n"



## Fixnum.times do ... end iteration
# index is {0, 1, 2, 3, 4}, generated from 5.times

puts "#4. Fixnum.times do ... end iteration demo: \n"


# expected output:
# 1, 2, 3, 4, 5

index = 0
5.times do | index |
    print (index+1)

    if index != 4
        print ", "
    else
        print "\n"
        
        # auto exit from loop, controller by Fixnum.do
    end

    # loop index is auto increased in do ... end loop with Fixnum.times
end

# Note: the loop index of "Fixnum.times do ... end" cannot be accessed outside

# expected output:
# latest value of index: 0
puts "latest value of index: " + index.to_s
puts "\n\n\n"



## loop do ... end iteration

puts "#5. loop do ... end iteration demo: \n"

# expected output:
# 1, 2, 3, 4, 5

index = 1

loop do 
    print index

    if index != 5
        print ", "
    else
        print "\n"

        # We have to handle the exit point of loop do ... end iteration
        # the break here is must-to-have to avoid infinite loops
        break
    end

    index += 1
end

# expected output:
# latest value of index: 5
puts "latest value of index: " + index.to_s
puts "\n\n\n"



## lowerBonud.upto( upperBound ) do ... end iteration

puts "#6. lowerBonud.upto( upperBound ) do ... end iteration demo: \n"

# expected output:
# 1, 2, 3, 4, 5

index = 0
1.upto(5) do |index|

    print index

    if index != 5
        print ", "
    else
        print "\n"
        # auto exit from loop, controller by upto(upperBound)
    end

    # loop index is auto increased in do ... end loop with lowerBonud.upto( upperBound )

end

# Note: the loop index of "lowerBonud.upto( upperBound ) do ... end" cannot be accessed outside

# expected output:
# latest value of index: 0
puts "latest value of index: " + index.to_s
puts "\n\n\n"



## upperBound.downto( lowerBound ) do ... end iteration

puts "#7. upperBound.downto( lowerBound ) do ... end iteration demo: \n"

# expected output:
# 1, 2, 3, 4, 5

index = 0
5.downto(1) do |index|

    print ( (5-index)+1)

    if index != 1
        print ", "
    else
        print "\n"
        # auto exit from loop, controller by downto(lowerBound)
    end

    # loop index is auto decreased in do ... end loop with upperBound.downto( lowerBound )

end

# Note: the loop index of "upperBonud.downto( lowerBound ) do ... end" cannot be accessed outside

# expected output:
# latest value of index: 0
puts "latest value of index: " + index.to_s
puts "\n\n\n"



## Array.each iteration

puts "#8. Array.each iteration demo: \n"

# array_iteration_demo = [1, 2, 3, 4, 5]
array_iteration_demo = [*1..5]

element = -1
array_iteration_demo.each do | element |
    print element

    if element != 5
        print ", "
    else
        print "\n"
        # auto exit from loop, controller by array.each iterator
    end

    # array.each iterator auto move forwards on every iteration
end

# Note: the iterator of "array.each do ... end" cannot be accessed outside

# expected output:
# latest value of element: -1
puts "latest value of index: " + element.to_s
puts "\n\n\n"

=end
