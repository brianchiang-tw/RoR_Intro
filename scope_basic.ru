
v1 = "outside"

class MyClass
    
    def my_method
        # p v1 exception thrown - no such variable exists
        v1 = "inside"
        p v1
        p local_variables
    end
end


# expected output
# "outside"
p v1

obj = MyClass.new

# expected output
# "inside"
# [:v1]
obj.my_method




# expected output:
# [:v1, :obj]
p local_variables



# expected output:
# main
p self