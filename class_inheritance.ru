
class Dog
    def to_s
        "Dog"
    end

    def bark
        "Bark!!!!!" 
    end
end



class SmallDog < Dog
    
    # Override bark method 
    def bark
        "Woof~~~~~"
    end
end

dog = Dog.new

small_dog = SmallDog.new

# expected outptu:
# Dog1 Bark!!!!!
puts "#{dog}1 #{dog.bark}"



# expected outptu:
# Dog2 Woof~~~~~
puts "#{small_dog}2 #{small_dog.bark}"