require 'benchmark'

input_1 = [1, 2, 3]
input_2 = [1, 1, 2]
input_3 = [1, 1, 2, 2]
input_4 = [1,1] + [*2..99]

def find_the_repeated_element( array_input )
    occurrenceMap = Hash.new()
    repeated_element_array = Array.new()

    array_input.each do | element |
    
        if nil == occurrenceMap[element]
            # first occurrence, set to 1
            occurrenceMap[element] = 1
        else
            # otherwise, it is a repeated element
            # occurrenceMap[element] += 1
            repeated_element_array.push( element )
        end
    end

    return repeated_element_array
end

#puts find_the_repeated_element( input_1 ).to_s;puts find_the_repeated_element( input_2 ).to_s;puts find_the_repeated_element( input_3 ).to_s

Benchmark.bm do | check |
    check.report {  find_the_repeated_element( input_1 ) }
    check.report {  find_the_repeated_element( input_2 ) }
    check.report {  find_the_repeated_element( input_3 ) }
    check.report {  find_the_repeated_element( input_4 ) }
end