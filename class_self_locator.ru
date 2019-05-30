class Person

    # automatic getter only
    attr_reader :age

    # both automatic setter and getter are procided
    attr_accessor :name


    # Constructor
    def initialize (name, ageVar)
        @name = name 
        self.age = ageVar 
        puts age 
    end

    # manual setter with conditional judgement
    def age= (new_age)
        @age = new_age unless new_age > 120
    end

end


# expected output (fron constructor):
# 13
person1 = Person.new("Kim", 13)



# expected output:
# My age is 13
puts "My age is #{person1.age}"



# try to modify age with a unreasonable value
person1.age = 500



# expected output:
# My age is 13
puts "My age is #{person1.age}"