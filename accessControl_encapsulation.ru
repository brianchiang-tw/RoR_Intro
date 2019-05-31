

# definition of class Car
class Car

    def initialize(speed, comfort)
        @rating = speed * comfort 
    end

    # Setting rating from outside is not allowed
    def rating
        return @rating
    end

    # Details of how rating is calculated are kept inside the class



end


car_1 = Car.new(4, 5)

# expected outptu:
# 20
puts car_1.rating

# access to rating raise NoMethodError of undefined method `rating='
# car_1.rating = 50