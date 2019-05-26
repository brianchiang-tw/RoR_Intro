
fileName = 'Output.txt'


# The file is automatically closed after the block executes

# open a file with "w", write mode, and output content into file
File.open(fileName, "w") do | file |
    file.puts "The first line"
    file.puts "The second line"
end