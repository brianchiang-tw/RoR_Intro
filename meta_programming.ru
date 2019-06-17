class Demo_meta_prog


    def initialize

        digit_character = [*'0'..'9']
        lowercase = [*'a'..'z']
        uppercase = [*'A'..'Z']
        @common_charachter = digit_character + lowercase + uppercase 
        puts @common_charachter.inspect
        puts @common_charachter.class
    end


    define_method(:demo) {
        puts "Demo dynamic method, the parameter passed in is #{:demo}"
    }


     ([*'a'..'z']+[*'A'..'Z']).each do |element|
         define_method(element){ 
             puts "This is a dynamic method for #{element}."
        }
     end






end
#End of class demo_meta_prog


obj_1 = Demo_meta_prog.new

# Demo dynamic method, the parameter passed in is demo
obj_1.demo


# This is a dynamic method for A.
obj_1.A

# This is a dynamic method for Z.
obj_1.Z

# This is a dynamic method for a.
obj_1.a 

# This is a dynamic method for z.
obj_1.z



#=============================================

class Superclass

    def self.define_demo_method(var)
        define_method("output_#{var}") do
            puts "This is #{var}."
        end
    end

end
# End of definition of class Superclass



class B < Superclass
    define_demo_method :dynamic_method_for_B
end



class C < Superclass
    define_demo_method :dynamic_method_for_C  
end


b = B.new
c = C.new

# This is dynamic_method_for_B.
b.output_dynamic_method_for_B

# This is dynamic_method_for_C. 
c.output_dynamic_method_for_C