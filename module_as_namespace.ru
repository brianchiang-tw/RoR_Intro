
# Sports::Match
module Sports
    class Match 
        attr_accessor :score
    end
end



# Patterns::Match
module Patterns
    class Match 
        attr_accessor :complete
    end
end



match1 = Sports::Match.new 
match1.score = 45

# expected output:
# 45
puts match1.score



match2 = Patterns::Match.new
match2.complete = true

# expected output:
# true
puts match2.complete