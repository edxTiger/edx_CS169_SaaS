class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    rules = { R: :S, P: :R, S: :P }
    strategy1, strategy2 = player1[1].to_sym, player2[1].to_sym
    raise RockPaperScissors::NoSuchStrategyError,'Strategy must be one of R,P,S' unless 
    	rules.has_value?(strategy1) && rules.has_value?(strategy2)
	return player1 if strategy1 == strategy2
	rules[strategy1] == strategy2 ? player1 : player2
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    return winner(tournament[0], tournament[1]) if tournament[0][0].class == String
    w = winner tournament_winner(tournament[0]), tournament_winner(tournament[1])
  end

end

p RockPaperScissors.tournament_winner([
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
])

# In a game of rock-paper-scissors, each player chooses to play Rock (R), Paper (P), or Scissors (S). The rules are: Rock breaks Scissors, Scissors cuts Paper, but Paper covers Rock.

# In a round of rock-paper-scissors, each player's name and strategy is encoded as an array of two elements

# [ ["Armando", "P"], ["Dave", "S"] ] # Dave would win since S > P


# 1. Game Winner:

# Create a RockPaperScissors class with a class method winner that takes two 2-element arrays like those above, and returns the one representing the winner:

# RockPaperScissors.winner(['Armando','P'], ['Dave','S'])  # => ['Dave','S']

# If either player's strategy is something other than "R", "P" or "S" (case-SENSITIVE), the method should raise a 'RockPaperScissors::NoSuchStrategyError' exception and provide the message: "Strategy must be one of R,P,S"

# If both players use the same strategy, the first player is the winner.

# 2. Tournament:

# A rock-paper-scissors tournament is encoded as an array of games - that is, each element can be considered its own tournament.

# [
#     [
#         [ ["Armando", "P"], ["Dave", "S"] ],
#         [ ["Richard", "R"],  ["Michael", "S"] ],
#     ],
#     [
#         [ ["Allen", "S"], ["Omer", "P"] ],
#         [ ["David E.", "R"], ["Richard X.", "P"] ]
#     ]
# ]

# In the tournament above Armando will always play P and Dave will always play S. This tournament plays out as follows:

# Under this scenario, Dave would beat Armando (S>P) and Richard would beat Michael (R>S), so Dave and Richard would play (Richard wins since R>S); similarly, Allen would beat Omer, Richard X. would beat David E., and Allen and Richard X. would play (Allen wins since S>P); and finally Richard would beat Allen since R>S. That is, pairwise play continues until there is only a single winner.

# Write a method `RockPaperScissors.tournament_winner' that takes a tournament encoded as an array and returns the winner (for the above example, it should return ['Richard', 'R']). You can assume that the array is well formed (that is, there are 2^n players, and each one participates in exactly one match per round).

# HINT: Formulate the problem as a recursive one whose base case you solved in part 1.