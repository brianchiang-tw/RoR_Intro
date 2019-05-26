
fileName = 'A non-existent file.txt'

# Exception prevention: Check the possible error case before file opening
if File.exist? fileName

    File.foreach( fileName ) do | line |
        puts line.chomp
    end

else

    # Show error message if the specific file does not exist
    puts "\"" + fileName + "\"" + " does not exist."

end