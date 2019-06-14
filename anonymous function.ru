f = -> {puts "This is an anonymous function."}
# This is an anonymous function.
f.call



lambda_calculus = lambda { puts "This is a lambda calculus."}
# This is a lambda calculus.
lambda_calculus.call



procedure = Proc.new { puts "This a a procedure." } 
# This a a procedure.
procedure.call



def function_obj_demo( f )
    puts "\nEnter function object demo"
    f.call
    puts "Leave function object demo\n"
end



### Passing function object as argument

# Enter function object demo
# This is an anonymous function.
# Leave function object demo
function_obj_demo( f )



# Enter function object demo
# This is a lambda calculus.
# Leave function object demo
function_obj_demo( lambda_calculus )



# Enter function object demo
# This a a procedure.
# Leave function object demo
function_obj_demo( procedure )



#===============================================================

### Embedding function object within argument



# Enter function object demo
# Embedding an anonymous function.
# Leave function object demo
function_obj_demo( -> {puts "Embedding an anonymous function."} )



# Enter function object demo
# Embedding a lambda calculus.
# Leave function object demo
function_obj_demo( lambda { puts "Embedding a lambda calculus."} )



# Enter function object demo
# Embedding a Proc(procedure).
# Leave function object demo
function_obj_demo( Proc.new { puts "Embedding a Proc(procedure)."} )