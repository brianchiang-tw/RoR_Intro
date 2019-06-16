class Person

    @@name = "class_Person"

    def self.class_demo
        puts "This is a demo of class method and class variable."
        puts "Hi, my name is "+ @@name + "."
    end


end
# End of definition of class Person


# This is a demo of class method and class variable.
# Hi, my name is class_Person.
Person.class_demo