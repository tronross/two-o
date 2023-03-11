#The Player class keeps track of its lives and turn, and contains a method to take a life upon an incorrect answer.
class Player
  attr_accessor :lives, :turn

  def initialize
    @lives = 3
  end

  def reduce_lives
    @lives -= 1
  end
end
