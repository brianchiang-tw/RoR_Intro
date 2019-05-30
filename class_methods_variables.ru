
class MathFunctions

    def self.double( var )
        times_called;

        return (var * 2)
    end

    # Using << self
    class << self
   
        def times_called
            
            # Initialized to 0 by default
            @@times_called ||= 0;

            return @@times_called += 1
        end
        
    end

end

# Outside of class
def MathFunctions.triple( var ) 
    times_called;

    return var*3
end



# No instance created.

# expected output
# 10
puts MathFunctions.double(5)

# expected output
# 24
puts MathFunctions.triple(8)

# expected output
# 3
puts MathFunctions.times_called