
if /sera/ === "coursera"
    puts " regular expression /sera/ triple equlas 'coursera' "
end



if "Hello" === 'Hello'
    puts "\"Hello\" triple equals 'Hello'"
end


if Integer === 66
    puts "66 is an Integer"
end


if String === 'Hello'
    puts "'Hello' is a string"
end


if (1..100) === 99
    puts "99 is in the range (1..100)"
end


if [1, 2, 3] === 1
    nil
else
    puts "We can not use triple equal to judge membership for a number over a list"
end