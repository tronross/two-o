# The Game class keeps track of the current player and score and orchestrates and initiates the turns; it decides the final winner and prints an appropriate message.

class Game

  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @current_player = 1
  end
 
  def turn 
    problem = Problem.new
    @current_player == 1 ? 2 : 1
    puts "Player #{@current_player}: #{problem.q}"
    answer = gets.chomp.to_i
    if answer == problem.a
      puts "Yass"
    else
      puts "Nooo"
    end
  end

  def game_start
    puts "Welcome Players!"
    turn
  end

end

