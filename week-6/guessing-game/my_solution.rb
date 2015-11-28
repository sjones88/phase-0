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


# Refactored Solution
class GuessingGame
	def initialize(answer)
		@answer = answer
	end

	def guess
		@last_guess = last_guess
		@last_result = last_result
		puts ""
		guess = gets.chomp.to_i
	end

	def solved?
	end
end












# Reflection