
require 'benchmark'

def is_sorted? arr 
    return arr == arr.sort
end
#End of method is_sorted?



def binarySearch( arr, targetValue )

    # Assume arr is a sorted a array with ascending order

    if false == (is_sorted? arr)
        # return error code -1
        return -1
    end

    lowerBound = 0
    upperBound = arr.length

    while lowerBound <= upperBound do

        # puts "\n\n"
        # puts "lower: "+ lowerBound.to_s
        # puts "upper: "+ upperBound.to_s
        # mid index
        mid = ( lowerBound + upperBound ) / 2
        # puts "mid: "+ mid.to_s

        # mid value
        midValue = arr[mid]
        # puts "midValue: "+ midValue.to_s

        # puts "targetValue: " + targetValue.to_s

        if targetValue == midValue
            return mid
        elsif targetValue > midValue
            lowerBound = mid+1
        else
            upperBound = mid-1
        end

    end

    # Indicate cannot find target value in given input array
    return -2

end
#End of method binarySearch


million = 1e6
array_1 = 10.times.map{ Random.rand(million).to_i } 
array_2 = 10000.times.map{ Random.rand(million).to_i } 
array_3 = 1000000.times.map{ Random.rand(million).to_i } 

array_1.sort!
array_2.sort!
array_3.sort!

container_of_array = [array_1, array_2, array_3]

Benchmark.bm do | check |

    container_of_array.each do | arr_reference |


        randomIndex = Random.rand( arr_reference.length )
        randomPick = arr_reference[randomIndex]
        
        check.report {

            index = binarySearch(arr_reference, randomPick )
            puts index
    
        }

    end

end