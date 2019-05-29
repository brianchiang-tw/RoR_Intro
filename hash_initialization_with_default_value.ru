
# Initialize hash without specific default value, then Ruby set default as nil
word_frequency = {}



# expected output
# {}
puts word_frequency.to_s

sentence = "Apple Orange Banana orange apple Lemon apple"

sentence.split.each do | singleWord |

    singleWord_cast_to_lower = singleWord.downcase

    if nil == word_frequency[singleWord_cast_to_lower]
        word_frequency[singleWord_cast_to_lower] = 1
    else
        # Treat uppercase and lowercase as the same item
        word_frequency[singleWord_cast_to_lower] += 1
    end

end

# expected output:
# {"apple"=>3, "orange"=>2, "banana"=>1, "lemon"=>1}
puts word_frequency.to_s




# --------------------------------------------------------------------
# Initialize hash with default value = 0
word_frequency_new = Hash.new(0)



# expected output
# {}
puts word_frequency_new.to_s

sentence.split.each do | singleWord |
    # Treat uppercase and lowercase as the same item
    word_frequency_new[singleWord.downcase] += 1
end

# expected output:
# {"apple"=>3, "orange"=>2, "banana"=>1, "lemon"=>1}
puts word_frequency_new.to_s