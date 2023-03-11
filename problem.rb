# Problem generates the question using random numbers and calculates the correct answer (and assigns the question and answer to a hash).

class Problem
  attr_reader :q, :a

  def initialize
    @num1 = (rand(1..20))
    @num2 = (rand(1..20))
    @q = "What does #{@num1} plus #{@num2} equal?"
    @a = @num1 + @num2
  end
end