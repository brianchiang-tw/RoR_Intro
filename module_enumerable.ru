# use require_relative ... to import other .ru file
require_relative 'player'
require_relative 'team'

player1 = Player.new("Bob", 13, 5)
player2 = Player.new("Jim", 15, 4.5)
player3 = Player.new("Mike", 21, 5)
player4 = Player.new("Joe", 14, 5)
player5 = Player.new("Scott", 16, 3)



aTeam = Team.new("aTeam")
aTeam.add_players( player1, player2, player3, player4, player5 )

eligible_player_list = aTeam.select{ |player| (14..20) === player.age }
                            .reject{ |player| player.skill_level < 4.5 }



# expected output:
# Jim: 4.5(SL), 15(AGE)
# Joe: 5(SL), 14(AGE)          
puts eligible_player_list