require 'digest'


demoInput = "Hello_World"
digestOuput = Digest::SHA1.hexdigest( demoInput )


puts "Input: " + demoInput
puts "Output: "+ digestOuput