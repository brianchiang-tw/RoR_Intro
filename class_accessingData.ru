class Person

    # Constructor
    def initialize (name, age)
        @name = name 
        @age = age 
    end


    # Getter
    def name 
        @name 
    end


    # Setter
    def name= (new_name)
        @name = new_name
    end

end


# Create a instance of class person, named "person1"
person1 = Person.new("Joe", 14)

# Get instance data by getter function
# expected output:
# Joe
puts person1.name



# Set instance data by setter function
person1.name = "Mike"



# Get instance data by getter function
# expected output:
# Mike
puts person1.name


# Direct access into age would raise error, for lack of getter function on age 
# undefined method `age' for #<Person:
# puts person1.age