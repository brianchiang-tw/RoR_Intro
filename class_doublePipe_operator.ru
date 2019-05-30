
class Person

    # automatic getter method
    attr_reader :age

    # automatic getter/setter method
    attr_accessor :name


    # Constructor
    def initialize (name, age)
        @name = name 
        self.age = age
    end
    

    # manual setter method
    def age= (new_age)
        
        # 5 as default value for age
        @age ||= 5 
        @age = new_age unless new_age > 120

    end

end



person1 = Person.new("Kim", 130)

# print the age after person1 is created

# expected output:
# 5
puts person1.age


# modify the age of person1 with valid value
person1.age = 10

# expected output:
# 10
puts person1.age


# modifu the age of person1 with invlid value
person1.age = 200

# expected output:
# 10
puts person1.age

