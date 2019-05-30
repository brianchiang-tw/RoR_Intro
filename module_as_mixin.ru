
module SayMyName
    attr_accessor :name 

    def print_name
        puts "Name: #{@name}"
    end
end



class Person
    include SayMyName
end

class Company
    include SayMyName
end

person = Person.new
person.name = "Jerry"

# expected output:
# Name: Jerry
person.print_name



company = Company.new
company.name = "I love Ruby, Ruby love me. Corp"

#expexted output:
# Name: I love Ruby, Ruby love me. Corp
company.print_name