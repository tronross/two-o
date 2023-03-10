# Problem generates the question using random numbers and calculates the correct answer (and assigns the question and answer to a hash).

class Problem
  attr_reader :problem, :num1, :num2

  def initialize
    @num1 = (rand(1..20))
    @num2 = (rand(1..20))
    
  end
 
end