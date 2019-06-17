class Rational_

    attr_accessor :numerator, :denominator

    def initialize(numerator, denominator)
        @numerator = numerator
        @denominator = denominator
    
    end


    def add( x )
        numerator = @numerator*x.denominator + @denominator*x.numerator
        denominator = @denominator * x.denominator
        return Rational_.new( numerator, denominator )
    end

    def show
        puts @numerator.to_s + " / " + @denominator.to_s
    end

end


a = Rational_.new( 1, 4 )
b = Rational_.new( 2, 5 )
c = a.add( b )

# 13 / 20
c.show

    