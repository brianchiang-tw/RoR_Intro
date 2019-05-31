
# definition of class Team

class Team

    # adding a lot of functionality
    include Enumerable

    attr_accessor :name, :players

    def initialize (teamName)
        @name = teamName

        # initialize team's player container to an empty array
        @players = []
    
    end

    def add_players (*p)

        @players = players + p
    
    end


    def to_s
        " #{@name} team: #{ @players.join(", ") } "
    end

    ### key point
    def each
        @players.each { | player | yield player }
    end


end