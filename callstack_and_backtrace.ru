def method_a

    puts "Method_a is on going."

    raise "Manually raise an error to demo the callstack and backtrace on debugging."

end



def method_b
    puts "Method_b is on going."

    method_a()
end



def method_c
    puts "Method_c is on going."

    method_b()
end








# expected output:
# Method_c is on going.
# Method_b is on going.
# Method_a is on going.

# exception message is as following:
# Manually raise an error to demo the callstack and backtrace on debugging.

# backtrace of call stack for debugging:
# callstack_and_backtrace.ru:5:in `method_a'
# callstack_and_backtrace.ru:14:in `method_b'
# callstack_and_backtrace.ru:22:in `method_c'
# callstack_and_backtrace.ru:29:in `<main>'
# code block after keyword ensure will be executed always
begin
    
    method_c()

rescue => exception

    puts "exception message is as following:"
    puts exception.message

    puts "backtrace of call stack for debugging:"
    puts exception.backtrace

ensure

    puts "code block after keyword ensure will be executed always"
    
    
end
