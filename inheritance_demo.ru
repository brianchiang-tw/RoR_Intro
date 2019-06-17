class Vehicle

    def move 
        puts "Vehicle moves"
    end

end



class Car < Vehicle 

    def show
        puts "This is a car."
    end

end



class Bike < Vehicle 

    def show
        puts "This is a bike."
    end


    # method overridding
    def move
        puts "Bike moves"
    end

end



car_1 = Car.new
bike_1 = Bike.new

# Vehicle moves
car_1.move

# Bike moves
bike_1.move

# This is a car.
car_1.show

# This is a bike.
bike_1.show