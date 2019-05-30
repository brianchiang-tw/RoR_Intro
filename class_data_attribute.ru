class Person

    attr_accessor :name, :age

end


# Create a instance of class person, named "person1"
person1 = Person.new

# Get instance data by getter function
# expected output:
# nil
p person1.name



# Set instance data by automatic setter function
person1.name = "Mike"
person1.age = 15

# expected output:
# Mike
puts person1.name

# expected output:
# 15
puts person1.age


# Set instance data by automatic setter function
person1.age = "fifteen"

# expected output:
# fifteen
puts person1.age

