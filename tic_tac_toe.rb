
#design 
#   A  B  C
# 1 __|__|__
# 2 __|__|__
# 3 __|__|__

# Prompt for
# Player One's turn: 
# replace "__" with X

# 

# Prompt for
# Player Two's turn:
# replace "__" with O
# accept only letter(ABC) and number(123)

# Winning conditions
# first to 3 in a row 
#   columns (all A, all B, all C)
#   rows (all 1, all 2, all 3)
#   diagonal (A1 B2 C3, C1 B2 A3)

# if all spaces occupied but no winning conditions, then tie 
# prompt to restart

def play()
  prompt("Player One's turn", )
end

def board()
  puts   "    A  B  C
  1 #{A1}|#{B1}|#{C1}
  2 #{A2}|#{B2}|#{C2}
  3 #{A3}|#{B3}|#{C3}"

end

A1 = "__"
A2 = "__"
A3 = "__"
B1 = "__"
B2 = "__"
B3 = "__"
C1 = "__"
C2 = "__"
C3 = "__"


board()