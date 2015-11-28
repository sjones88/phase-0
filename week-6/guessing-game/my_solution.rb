# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode
=begin
Problem: Create a guessing game that takes an integer, 'answer', at initialization, 
and then takes an integer, 'guess'. If 'guess' is larger than 'answer', return :high.
If 'guess' is lower than 'answer', return :low. If 'guess' is equal to 'answer', return
:correct. Create a method, 'solved?', that returns true if 'guess' equals 'answer' and 
returns false if 'guess' does not equal 'answer.'

# Input: an integer, answer, at initialization. an integer, guess, for GuessingGame#guess method.
# Output: For GuessingGame#solved?, a boolean value. For GuessingGame#guess, a symbol (:high, :low, or :correct).
# Steps:
- In initialize method, create an instance variable, '@answer', and assign it to 'answer'.
- In guess method, create an instance variable, '@guess', and assign it to 'guess'.
- 

=end
# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
    unless answer >= 0
    	raise ArgumentError.new('Please enter a non-negative integer.')
    end
  end

  def guess(guess)
  	@guess = guess
  	if guess > @answer
  		:high
  	elsif guess < @answer
  		:low
  	else
  		:correct
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end
end
game = GuessingGame.new(10)
=end

# Refactored Solution

class GuessingGame
	def initialize(answer)
		@answer = answer
    unless answer >= 0
      raise ArgumentError.new('Please enter a non-negative integer.')
    end
	end

	def guess(guess)
		@guess = guess
    if guess > @answer
      :high
    elsif guess < @answer
      :low
    else
      :correct
    end
	end

	def solved?
    if @guess == @answer
      return true
    else
      return false
    end
	end
end

# Reflection
=begin
- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?


- When should you use instance variables? What do they do for you?


- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?


- Why do you think this code requires you to return symbols? What are the benefits of using symbols?


=end