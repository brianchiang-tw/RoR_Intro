


# expected output:
# The first line of the file
# "The first line of the file\n"
# "The first line of the file"
# ["The", "first", "line", "of", "the", "file"]
# And the second
# "And the second\n"
# "And the second"
# ["And", "the", "second"]
# Third
# "Third"
# "Third"
# ["Third"]

File.foreach('test.txt') do | line |
    puts line

    # p obj = puts obs.inspect, mostly for debug ouput
    # puts obj = puts obj.to_s, mostly for normal output with to_string method
    p line          # original content of each line, including new line "\n" symbol
    p line.chomp    # chops off newline character 
    p line.split    # array of words in line

end