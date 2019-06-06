
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



### Regular expressions

=begin

phoneNumber = "0912-345-678"

serviceProvider = nil
middleNumber = nil
tailNumber = nil

regex = /(\d{4})-(\d{3})-(\d{3})/
                  
if phoneNumber =~ regex
    serviceProvider = $1
    middleNumber = $2
    tailNumber = $3
end

# expected output:
# 0912
puts serviceProvider

# expected output:
# 345
puts middleNumber

# expected output:
# 678
puts tailNumber

=end


### Method definition

=begin

def greeting_1( name )
    sentence = "Nice to meet you, " + name + "."
    return sentence
end

# Nice to meet you, Tom.
puts greeting_1("Tom")

# Note the parenthesis could be skipped

# Nice to meet you, Joe.
puts greeting_1 "Joe"

## We can set default value in paramter list of a method/function
def greeting_2( name="Mandy" )
    sentence =  "Hi, " + name + "."
    return sentence
end

# Hi, Mandy.
puts greeting_2

=end


### Special postfix ending mark of Ruby method

## Methods ending in ! perform some permanent change or potentially risky change

# Example of postfix ! 

# arrayObj.sort returns a new object with sorted array
# arrayObj.sort! sorts itself in-place.

# Kernel::exit causes a script to exit.
# Kernel::exit! does so right away, and bypassing any exit handlers



## Method ending in ? return a boolean with corresponding condition judgement

# Example of postfix ?

# flag = x.zero? <==> flag = true if x == 0, or flag = false if x != 0

=begin

array_demo_postfix_mark = [5, 1, 4, 2, 3]

# false
puts array_demo_postfix_mark.empty?

# [1, 2, 3, 4, 5]
puts array_demo_postfix_mark.sort.inspect

# Keep the same
# [5, 1, 4, 2, 3]
puts array_demo_postfix_mark.inspect



# [1, 2, 3, 4, 5]
puts array_demo_postfix_mark.sort!.inspect

# The sort! carries out a in-place sorting by itself
# [1, 2, 3, 4, 5]
puts array_demo_postfix_mark.inspect

=end


### Object orientation 

# Object-oriented programming (OOP) is a programming paradigm 
# based on the concept of "objects", which can contain data, 
# in the form of fields (often known as attributes), and code, 
# in the form of procedures (often known as methods). 

# A feature of objects is an object's procedures that can access 
# and often modify the data fields of the object with 
# which they are associated (objects have a notion of "this" or "self").


## Recall: Ruby is a programming language with full object-orientation

=begin

## Object creation

string_obj_1 = String.new
string_obj_2 = ""

# true
puts string_obj_1 == string_obj_2


array_obj_1 = Array.new
array_obj_2 = []

# true
puts array_obj_1 == array_obj_2

hash_obj_1 = Hash.new
hash_obj_2 = {}

# true
puts hash_obj_1 == hash_obj_2

=end


### Definition of a class

=begin

class Pilot

    # We can run a piece of code in class
    cheer = "We control the skies! <3"
    
    puts cheer

    # Class Method for access control on attribute
    # 1. attr_accessor for getter and setter
    # 2. attr_reader for getter only
    # 3. attr_writer for setter only
    attr_reader :first_name, :last_name, :name

    # Object Constructor
    def initialize( firstName, lastName)
        @fisrt_name = firstName
        @last_name = lastName
        @name = "#{firstName} #{lastName}".to_s

        ObjectSpace.define_finalizer( self, finalize() )
    end

    # Object Method
    def introduce
        #introduction = "Hi everyone. My name is #{@fisrt_name} #{@last_name}."
        introduction = "Hi everyone. My name is #{@name}."

        puts introduction
        puts "F-14 is reall cool!!!"

        return
    end

    # Class object destructor
    #def self.finalize()
    def finalize( p = @name)
        proc{
            farewell = "(from #{p}) Hey I got to go for combat training. See you."
            puts farewell
            return
        } 
    end

end
#End of definition of class Pilot

# expected output in order:


# We control the skies! <3
actor_1 = Pilot.new("Tom", "Cruise")

# Hi everyone. My name is Tom Cruise.
# F-14 is reall cool!!!
actor_1.introduce



# Note: Ruby will auto start GC to recycle unused object in background
actor_1 = nil

actor_2 = Pilot.new("Pete", "Mitchell")

# Hi everyone. My name is Pete Mitchell.
# F-14 is reall cool!!!
actor_2.introduce

# Pete Mitchell
puts actor_2.name

# Auto execution of finalize after object being recycled
# (from Pete Mitchell) Hey I got to go for combat training. See you.
# (from Tom Cruise) Hey I got to go for combat training. See you.


# Because we set attr_reader for name, thus it is read-only
# undefined method `name=' for #<Pilot:0x2e4cfb8> (NoMethodError)
# actor_2.name = "Maria Sharapova"



### Method encapsulation in Class

class Fighter_aircraft
    
    #public, is default setting in Ruby
    def radio_check
        puts "Radio check complete."
    end

    #protected
    protected
    def wing_plane_signal
        puts "Sending wing place signal..."
    end

    #private
    private
    def track_enemy
        puts "Tracking enemy..."
    end

    def lock_on_enemy
        puts "Locking on target"
    end


end
# End of definition of class Fighter_aircraft

=end



### Class inheritance

# Use < to indicates that subclass inherits property from superclass 
# 
# Remark: < is like the syntax as below:
# subclass "extends" superclass in Java, 
# subclass":"  superclass in C++,
# subclass(superclass) in Python 


=begin

class Animal 
    attr_accessor :name, :age

    def say( content )
        puts "Say: #{content}."
    end

end
#End of definition of class Animal

class Cat < Animal
    
    # method overriding
    def say( content )
        puts "Meow~~~ >//<"
        super( content )
    end

end
#End of definition of class Cat

class Dog < Animal

    # method overriding
    def say( content , target )
        puts "Bark at #{target} ~~~"
        super( content )
    end

end
#End of definition of class Dog

class Cow < Animal

    # method overriding
    def say
        puts "Moo...Moooooooo....."
        super("Moo")
    end

end
#End of definition of class Cow

animal_1 = Animal.new
cat_1 = Cat.new
dog_1 = Dog.new
cow_1 = Cow.new

# expected output:
# Say: say function of animal.
# Meow~~~ >//<
# Say: meow.
# Bark at a car ~~~
# Say: wolf.
# Moo...Moooooooo.....
# Say: Moo.

animal_1.say("say function of animal")
cat_1.say("meow")
dog_1.say("wolf","a car")
cow_1.say


=end



### Module

# Module are somewhat similar to classes: they are things what hold methods, just like classes do.
# However, modules can not be instantiated.
# It's not possible to create objects from a module.
# In addition, modules, unlike classes, therefore do not have a method new to create object(instance).

# With the implementation of modules, we can share methods bryween classes: Modules can be included into classes,
# and this makes their methods available on the class, just as if we'd copied and pasted these methods over the class definition.

# It is useful if we have methods which we want to reuse again in other classes and avoid repetition.

=begin

module Debug_message

    def who_am_i
        puts "#{self.class.name}: #{self.inspect}"
    end

end
#End of definition of module debug_message



class Pilot
    # include module "Debug_message"
    include Debug_message

    # We can run a piece of code in class
    cheer = "We control the skies! <3"
    
    puts cheer

    # Class Method for access control on attribute
    # 1. attr_accessor for getter and setter
    # 2. attr_reader for getter only
    # 3. attr_writer for setter only
    attr_reader :first_name, :last_name, :name

    # Object Constructor
    def initialize( firstName, lastName)
        @fisrt_name = firstName
        @last_name = lastName
        @name = "#{firstName} #{lastName}".to_s

        ObjectSpace.define_finalizer( self, finalize() )
    end

    # Object Method
    def introduce
        #introduction = "Hi everyone. My name is #{@fisrt_name} #{@last_name}."
        introduction = "Hi everyone. My name is #{@name}."

        puts introduction
        puts "F-14 is reall cool!!!"

        return
    end

    # Class object destructor
    #def self.finalize()
    def finalize( p = @name)
        proc{
            farewell = "(from #{p}) Hey I got to go for combat training. See you."
            puts farewell
            return
        } 
    end

end
#End of definition of class Pilot

Pilot_3 = Pilot.new("Charlotte", "Blackwoord")

# expected output:
# Pilot: #<Pilot:0x2d779e8 @fisrt_name="Charlotte", @last_name="Blackwoord", @name="Charlotte Blackwoord">
Pilot_3.who_am_i


=end


### Iterator

# Iterators are  methods supported by collections. 
# Objects that store a group of data members are called collections. 
# In Ruby, arrays and hashes can be termed collections.

# Iterators return all the elements of a collection

=begin

array_pilot = ["Pete Mitchell", "Charlotte Blackwoord", "Nick Bradshaw", "Mike Metcalf", "Tom Kazansky"]


# expected output:
# Pete Mitchell is an ace pilot.
# Charlotte Blackwoord is an ace pilot.
# Nick Bradshaw is an ace pilot.
# Mike Metcalf is an ace pilot.
# Tom Kazansky is an ace pilot.

array_pilot.each do | pilot |
    puts "#{pilot} is an ace pilot."
end


# expected output: (hurray is picked randomly)
# 1, Pete Mitchell : ["Let's given them an air show."]
# 2, Charlotte Blackwoord : ["We control the skies."]
# 3, Nick Bradshaw : ["I see 'em, radar tracking is ready."]
# 4, Mike Metcalf : ["Laser guided missile is good to go."]
# 5, Tom Kazansky : ["Roger taht."]


array_hurray = ["Air Force here.", "We control the skies.", "I'm listening.", "Let's given them an air show.", "We're cruising.", "Got you covered.", "I see 'em, radar tracking is ready.", "Roger taht.", "This is our territory.", "Laser guided missile is good to go.", "On patrol."]

# Advanced usage with both element and index by ".each_with_index" syntax

array_pilot.each_with_index do | pilot, index |
    
    puts "# #{index+1}, #{pilot} : #{ array_hurray.sample(1) }"

end



=end



### Code block

# do...end is recommended for multi-ine

# { ... } in recommended for single line



# expected output:
# Code block demo with curly brace
# Code block demo with curly brace

=begin
2.times { puts "Code block demo with curly brace"}
=end


# expected output:
# Code block demo
# with do...end
# Code block demo
# with do...end

=begin
2.times do
    puts "Code block demo"
    puts "with do...end"
end
=end



### Mixture of built-in function, code block, and iterators

=begin

ranger_quote_array = ["Army's elite", "Always prepared", "Ready for action", "Special forces here", "On the go"]

sentence_demo = ranger_quote_array.map { |quote| quote+"!" }

# expected output:
# ["Army's elite!", "Always prepared!", "Ready for action!", "Special forces here!", "On the go!"]

puts sentence_demo.inspect

=end

number_array_one_to_ten = [*1..10]

# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts number_array_one_to_ten.inspect

# [2, 4, 6, 8, 10]
even_number_output_array = number_array_one_to_ten.find_all { |num| num % 2 == 0 }
puts even_number_output_array.inspect

# [1, 3, 5, 7, 9]
odd_number_output_array = number_array_one_to_ten.find_all { |num| num % 2 == 1 }
puts odd_number_output_array.inspect

# [7, 8, 9, 10]
filtered_numbet_output_array = number_array_one_to_ten.find_all { |num| num > 6} 
puts filtered_numbet_output_array.inspect


## <=> Spaceship comparison operator

# a <=> b :=
#   if a < b then return -1
#   if a = b then return  0
#   if a > b then return  1
#   if a and b are not comparable then return nil

a = 5
b = 3
# 1
puts a <=> b



a = 5
b = 5
# 0
puts a <=> b



a = 5
b = 7
# -1
puts a <=> b



a = 5
b = "5"

# nil
p a <=> b

# Shuffle a array to make it of random order
number_array_one_to_ten_shuffle = number_array_one_to_ten.shuffle



# an array, element range is  from 1 to 10, with random sequence
# [8, 5, 1, 10, 4, 7, 6, 3, 9, 2]
puts number_array_one_to_ten_shuffle.inspect



# sort with <=> spaceship comparison operator, with ascenging order
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
number_array_one_to_ten_sort_ascending = number_array_one_to_ten_shuffle.sort { |a, b| a <=> b }
puts number_array_one_to_ten_sort_ascending.inspect



# sort with <=> spaceship comparison operator, with descending order
# [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
number_array_one_to_ten_sort_descending = number_array_one_to_ten_shuffle.sort { |a, b| b <=> a }
puts number_array_one_to_ten_sort_descending.inspect

# Leveraging .reverse of ascending result to get a descending one also works well.
# [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
puts number_array_one_to_ten_sort_ascending.reverse.inspect



## Summation, injection as well as reduction

# 55
sum_by_method_1 = number_array_one_to_ten.inject(0){ |sum, element | sum + element }
puts sum_by_method_1

# 55
sum_by_method_2 = number_array_one_to_ten.inject{ | sum, element | sum + element }
puts sum_by_method_2

# 55
sum_by_method_3 = number_array_one_to_ten.inject(0, :+)
puts sum_by_method_3

# 55
sum_by_method_4 = number_array_one_to_ten.inject(:+)
puts sum_by_method_4

# 55
sum_by_method_5 = number_array_one_to_ten.reduce(0, :+)
puts sum_by_method_5

# 55
sum_by_method_6 = number_array_one_to_ten.reduce(:+)
puts sum_by_method_6