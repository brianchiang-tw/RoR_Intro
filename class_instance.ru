
# implement of class definition
class Person
    
    # implement of class constructor
    def initialize (name, age) 
        @name = name 
        @age = age 
    end

    def get_info
        @additional_info = "Interesting"
        
        "Name: #{@name}, age: #{@age}"
    end

end

person_1 = Person.new("Joe", 14)

# expected output:
# [:@name, :@age]
p person_1.instance_variables


# expected output:
# Name: Joe, age: 14
puts person_1.get_info 

# expected output:
# [:@name, :@age, :@additional_info]
p person_1.instance_variables