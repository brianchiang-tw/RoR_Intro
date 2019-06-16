tickets = [
    { name: "Ticket A", amount: 100  },
    { name: "Ticket B", amount: 1123 },
    { name: "Ticket C", amount: 670  },
    { name: "Ticket D", amount: 50   },
    { name: "Ticket E", amount: 990  },
]


# Find the ticket price, whose sale price is below 1000, with highest value


## Method_#1: loop
target_price = 0
tickets.each do | t |
    if ( t[:amount] < 1000 && t[:amount] > target_price )
        target_price = t[:amount]
    end
end

# 990
puts target_price



## Method_#2: map-filter-reduce

output = tickets.map{ |t| ( t[:amount ] ) }.select{ |price| (price < 1000 ) }.reduce{ | max, p | ( max > p )? max : p } 
# 990
puts output