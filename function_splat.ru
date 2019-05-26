
def find_max_from_variable_length_argument(first, *aSeriesOfNumber, last)
    # variable length argument passed in, and become a array of numbers
    return aSeriesOfNumber.max 
end

puts find_max_from_variable_length_argument("Head", 1, 88, 100, 5, "Tail")

