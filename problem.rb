# Problem generates the question using random numbers and calculates the correct answer (and assigns the question and answer to a hash).

class Problem
  attr_reader :question, :answer

  def initialize
    @num1 = (rand(1..20))
    @num2 = (rand(1..20))
    @question = "What does #{@num1} plus #{@num2} equal?"
    @answer = @num1 + @num2
  end
 
end