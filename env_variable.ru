
environmentVariableString =  ENV["PATH"]

delimiter = ";"
environmentVariableList = environmentVariableString.split( delimiter )

puts "Current Path setting"
puts environmentVariableList