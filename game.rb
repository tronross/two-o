# The Game class orchestrates the gameplay; it decides the final winner and prints an appropriate message.

class Game

  def initialize
    @p1 = Player.new
    @p2 = Player.new
    @p1.turn = true
  end

  def round
    problem = Problem.new

    puts "Player One: #{@p1.lives}/3 Lives vs. Player Two: #{@p2.lives}/3 Lives"
    puts " <<<<<<<< New Round >>>>>>>>"
    puts "Player #{@p1.turn ? "One" : "Two"}: #{problem.q}"
    answer = gets.chomp.to_i

    if answer == problem.a
      puts "Yasss! That's right!"
      self.turn
      self.round
    else
      puts "Noooo! Sharpen your pencil!"
      @p1.turn ? @p1.reduce_lives : @p2.reduce_lives
      self.game_over?
    end
  end

  def turn
    if @p1.turn
      @p2.turn = true
      @p1.turn = false
    else 
      @p2.turn = false
      @p1.turn = true
    end
  end

  def game_over?
    if @p1.lives == 0 || @p2.lives == 0
      puts "<<<<<<<< Game Over Player #{@p1.turn ? "One" : "Two"}!! >>>>>>>>"
      puts "Final Score: Player One: #{@p1.lives}/3 Lives vs. Player Two: #{@p2.lives}/3 Lives"
    else 
      self.turn
      self.round
    end
  end

  def game_start
    puts "Welcome Players!"
    self.round
  end
end
