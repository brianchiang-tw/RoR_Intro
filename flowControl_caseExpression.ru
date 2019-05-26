
age = 20

case # 1st type of case syntax
    when age >= 18
        puts "You can drive a car"
    else
        puts "Younger than minimim dirving age."
end



name = 'Fisher'

case name # 2nd type of case syntax
    when /fish/i then puts "This name include 'fish' inside."
    when 'Smith' then puts "Your name is Smith"
end