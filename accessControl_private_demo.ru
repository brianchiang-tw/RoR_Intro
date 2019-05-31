
# definition of class Person
class Person

    def initialize( newAge )

        # Legal - exception
        self.age = newAge

        puts my_age


        # Illegal
        # Cannot use self or any other receiver to private method
        # puts self.my_age

    end



    private
        def my_age
            return @age
        end


        def age=(newAge)
            @age = newAge
        end


end


# expected output
# 30
p1 = Person.new(30)