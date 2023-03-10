#The Player class keeps track of its lives, and contains a method to take a life upon an incorrect answer.
class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def reduce_lives
    @lives -= 1
  end
end

playerOne = Player.new
puts playerOne.lives

playerOne.reduce_lives
puts playerOne.lives
