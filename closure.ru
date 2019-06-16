
array_demo = [*1..5]

msg = "demo closure"


# demo closure 1
# demo closure 2
# demo closure 3
# demo closure 4
# demo closure 5
array_demo.each do |elemnet| 

    puts msg + " " + elemnet.to_s

    local_var_inside_do_end = "msg inside"

end


# accessing to local_var_inside_do_end will raise NameError
# undefined local variable or method `local_var_inside_do_end' for main:Object (NameError)
# puts local_var_inside_do_end
