
# definition of class Calculator
class Calculator

    attr_reader :name 

    def initialize( newName )
        @name = newName
    end

    def add(a, b)

        # We know it should be a + b here.
        # This is a manually man-made error on purpose, in order to demo unit-test's functionality
        a-b
    end


    def sub(a, b)

        # We know it should be a - b here.
        # This is a manually man-made error on purpose, in order to demo unit-test's functionality
        a+b
    end


    def mul(a, b)
        a*b
    end

    def div(a, b)
        a/b
    end

end