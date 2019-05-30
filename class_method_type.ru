
class Foo 

    def an_instance_method
        puts "I am a instance method." 
    end

    def self.a_class_method 
        puts "I'm a class methoed."
    end

end

foo_obj = Foo.new 

def foo_obj.a_singleton_method 
    puts "I'm a singleton method."
end

class << foo_obj
    def another_singleton_method
        puts "I'm the 2md singleton method."
    end
end    
# I am a instance method.
foo_obj.an_instance_method

# I'm a class methoed.
Foo.a_class_method

# I'm a singleton method.
foo_obj.a_singleton_method

# I'm the 2md singleton method.
foo_obj.another_singleton_method