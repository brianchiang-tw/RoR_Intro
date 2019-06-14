require 'benchmark'

million = 1e6
array_1 = Array.new( million ) { rand(100) }

array_2 = array_1 * 10

# puts "array_1.length:"
# puts array_1.length

# puts "array_2.length:"
# puts array_2.length


hash_1 = {}
array_1.each { |element| hash_1[element] = element.to_s }

hash_2 = {}
array_2.each { |element| hash_2[element] = element.to_s }

# puts "hash_1:"
# puts hash_1

# puts "hash_2:"
# puts hash_2


searchTarget = 101

Benchmark.bm do | check |
    check.report{ array_1.include?(searchTarget) }

    check.report{ array_2.include?(searchTarget) }

    check.report{ hash_1[searchTarget] == searchTarget.to_s }

    check.report{ hash_2[searchTarget] == searchTarget.to_s }

end