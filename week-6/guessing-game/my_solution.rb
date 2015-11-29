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
Instance variables endow classes with the ability to remember the state of a given object. To use an example from this challenge, the @answer and @guess instance variables
enable instances of the GuessingGame class to 'remember' the answer to the game and the most recent guess. The methods can access the 'remembered' information and do things
with that information. For example, the guess method remembers a guess and compares it to the answer that was passed to the instance of GuessingGame when it was initialized.

- When should you use instance variables? What do they do for you?
You can only use instance variables within a class that you've created. Within their class, instance variables give you an easy way to pass information between methods.

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is the use of conditional statements within a method to allow the method to take different courses of action depending on the input that the method receives.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I read section 8.2 of 'Rubyist' and I'm still not quite sure why this challenge requires you to return symbols. However, my guess is we need to return symbols because symbols
don't change after they are created. If you call .object_id on a symbol any number of times, you will always return the same object id, while this is not true of strings.
It (vaguely) makes sense to me that we would want to return the same objects (:high, :low, or :correct) when our guess is evaluated.

=end