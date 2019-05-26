
begin

    fileName = 'A non-existent file.txt'
    File.foreach( fileName ) do | line |
        puts line
    end


    rescue Exception => error 
        puts error.message
        puts "Can not open file: " + fileName

end