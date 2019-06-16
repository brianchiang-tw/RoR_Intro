require 'date'

class Car 

    attr_accessor :name, :modal, :year

    def initialize(name, modal, buy_date)
        @name = name
        @modal = modal
        @buy_date = buy_date
    end

    def age 
        current_year = Date.today.year
        car_year = @buy_date.year
        car_age = current_year - car_year


        if car_age == 1
            puts "Age of this car: "+ car_age.to_s + "year." 
        else
            puts "Age of this car: "+ car_age.to_s + "years."  
        end
        
    end

    def show_car_info
        puts @buy_date.to_s + " " + @modal + " " + @name
    end

end

car1 = Car.new("Big 7", "BMW 7 Series", Date.new(2018,1,1) )
car1.age
car1.show_car_info

