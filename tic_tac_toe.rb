
#design 
#   A  B  C
# 1 __|__|__
# 2 __|__|__
# 3 __|__|__

# Prompt for
# Player One's turn: 
# replace "__" with X

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

def update_player_one(choice)
  if choice == "A1"
    if A1 == "__"
      A1.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end
  
  elsif choice == "A2"
    if A2 == "__"
      A2.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  elsif choice == "A3"
    if A3 == "__"
      A3.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  elsif choice == "B1"
    if B1 == "__"
      B1.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  elsif choice == "B2"
    if B2 == "__"
      B2.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  elsif choice == "B3"
    if B3 == "__"
      B3.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  elsif choice == "C1"
    if C1 == "__"
      C1.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  elsif choice == "C2"
    if C2 == "__"
      C2.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  elsif choice == "C3"
    if C3 == "__"
      C3.replace("X ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_one(choice)
    end

  else
    puts "invalid choice, please enter again"
    choice = gets.chomp
    update_player_one(choice)
  end


end

def update_player_two(choice)
  if choice == "A1"
    if A1 == "__"
      A1.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "A2"
    if A2 == "__"
      A2.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "A3"
    if A3 == "__"
      A3.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "B1"
    if B1 == "__"
      B1.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "B2"
    if B2 == "__"
      B2.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "B3"
    if B3 == "__"
      B3.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "C1"
    if C1 == "__"
      C1.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "C2"
    if C2 == "__"
      C2.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  elsif choice == "C3"
    if C3 == "__"
      C3.replace("O ")
    else
      puts "space is occupied, select another space"
      choice = gets.chomp
      update_player_two(choice)
    end

  else
    puts "invalid choice, please enter again"
    choice = gets.chomp
    update_player_two(choice)
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
    player_one_choice = gets.chomp
    
    @turn += 1
    @fill += 1
    puts "Player One's choice is #{player_one_choice}"
    update_player_one(player_one_choice)
    display()
  end

  def player_two()
    board()
    print "Player Two's turn: "

    player_two_choice = gets.chomp
    update_player_two(player_two_choice)
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


