
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


A1 = "__"
A2 = "__"
A3 = "__"
B1 = "__"
B2 = "__"
B3 = "__"
C1 = "__"
C2 = "__"
C3 = "__"

def board()
  puts   "    A  B  C
  1 #{A1}|#{B1}|#{C1}
  2 #{A2}|#{B2}|#{C2}
  3 #{A3}|#{B3}|#{C3}"
end



def update(choice)
  if choice == "A1"
    A1.replace("X ")
  elsif choice == "A2"
    A2.replace("X ")
  elsif choice == "A3"
    A3.replace("X ")
  elsif choice == "B1"
    B1.replace("X ")
  elsif choice == "B2"
    B2.replace("X ")
  elsif choice == "B3"
    B3.replace("X ")
  elsif choice == "C1"
    C1.replace("X ")
  elsif choice == "C2"
    C2.replace("X ")
  elsif choice == "C3"
    C3.replace("X ")
  else
    puts "invalid choice, please enter again"
    choice = gets
    update(choice)
  end
end

class PlayerTurn
  def initialize()
    @turn = 0 
    @fill = 0
  end

  def display()
    puts "Turn is #{@turn}"
    puts "Fill is #{@fill}"
  end

  def player_one()
    board()
    print "Player One's turn: "
    player_one_choice = gets.to_s
    
    @turn += 1
    @fill += 1
    puts "Player One's choice is #{player_one_choice}"
    update(player_one_choice)
    display()
  end

  def player_two()
    board()
    print "Player Two's turn: "

    player_two_choice = gets.to_s
    update(player_two_choice)
    @turn = 0
    @fill += 1
    puts "Player Two's choice is #{player_two_choice}"
    display()
  end

  def play()
    while @fill < 9
      if @turn == 0
        player_one()
      else
        player_two()
      end
    end
  end

end

play = PlayerTurn.new()
play.play()


