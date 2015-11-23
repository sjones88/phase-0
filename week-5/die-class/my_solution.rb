# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 3 hours on this challenge.

# 0. Pseudocode

# Input: an integer - number of sides of a die
# Output: an integer - result of rolling the [input-number]-sided die
# Steps:
# - create instance variable for # of sides
# - generate a random integer between 1 and [number-of-sides]
# - raise an error if sides argument is less than 1


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
    unless sides > 1
    	raise ArgumentError.new("Choose an integer larger than 1")
    end
  end

  def sides
  	@sides
  end

  def roll
    # code goes here
    prng = Random.new
    prng.rand(1..@sides)
  end
end



# 3. Refactored Solution
class Die
	def initialize(sides)
		@sides = sides
		unless sides > 1
			raise ArgumentError.new('Choose an integer larger than 1')
		end
	end

	def sides
		@sides
	end

	def roll
		prng = Random.new
		prng.rand(1..@sides)
	end
end

# 4. Reflection
=begin
- What is an ArgumentError and why would you use one?
An ArgumentError is raised when a method is passed an argument that it doesn't understand.
For example, if a method expects 1 argument and it is passed 2 arguments, an ArgumentError 
should be raised. You used ArgumentErrors when you are defining a method within a class that
you've created and you want that method to return an error message when it receives the wrong
number or types of arguments.

- What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I implemented the rand(max) method for the first time. It turned out to be a pretty simple and easy-to-implement
way of generating a random integer within a range.

- What is a Ruby class?
A Ruby class is an object.

- Why would you use a Ruby class?
Ruby classes are useful when you want to create instance variables or when you want to create group behaviors
that allow you to create objects that behave in a certain way.

- What is the difference between a local variable and an instane variable?
The difference is scope. A local variable's scope is limited to the method in which it is defined. You can't 
call a local variable outside of its method. Instance variables are limited in scope to class. Any method within 
a class can access that class's instance variables.

- Where can an instance variable be used?
An instance variable can be used in any method within its class.







=end

