
# definition of class Calculator
class Calculator

    attr_reader :name 

    def initialize( newName )
        @name = newName
    end

    def add(a, b)
        a+b
    end


    def sub(a, b)
        a-b
    end


    def mul(a, b)
        a*b
    end

    def div(a, b)
        a/b
    end

end