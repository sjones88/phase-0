# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode
=begin
Problem: Pass an array of strings (representing a labeled die) and randomly return one of those elements when
the 'roll' method is called on the die.
# Input: an array of strings
# Output: one of the elements of the array, selected randomly
# Steps: 
1. Check the array to make sure it isn't empty.
2. UNLESS array length > 0
	- raise an argument error
3. Create a method that returns the number of 'sides'
4. Return a random integer between 1 and number-of-sides
5. Save that number to a variable, 'die_roll'
6. Return the 'die_roll'th array element and print it to the screen
=end
# Initial Solution

class Die	
  def initialize(labels)
	@labels = labels
	@sides = sides
  	unless labels.size > 0
  		raise ArgumentError.new('Array is empty. Pass a non-empty array.')
  	end
  	unless labels.is_a?(Array) == true
  		raise ArgumentError.new('Please pass an array.')
  	end
  end

  def sides
  	@sides = @labels.size
  end

  def roll
  	prng = Random.new
  	die_roll = prng.rand(0...@sides)
  	@labels[die_roll]
  end
end
d = Die.new(['Alfred', 'Mr. Bond', 'Goldfinger','Blofeld'])

def die_rolls(number_of_rolls, array)
  d = Die.new(array)
  die_roll = []	
  rolls = Hash.new(0)
  number_of_rolls.times do
  	one_roll = d.roll
  	die_roll.push(one_roll)
  end
  die_roll.each {|label| rolls[label] += 1}
  rolls.sort_by {|label, frequency| frequency}.reverse
end
array = ['Alfred','Mr. Bond','Goldfinger','Blofeld','Jaws','Spectre','Q']
p die_rolls(1000,array)


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = sides
      unless labels.size > 0
        raise ArgumentError.new('Array is empty. Pass a non-empty array.')
      end
      unless labels.is_a?(Array) == true
        raise ArgumentError.new('Please pass an array.')
      end
    end

  def sides
    @sides = @labels.size
  end

  def roll
    prng = Random.new
    die_roll = prng.rand(0...@sides)
    @labels[die_roll]
  end
end

=begin
class Die
  include Enumerable	
  def initialize(labels)
	@labels = labels
	@sides = sides
  	unless labels.size > 0
  		raise ArgumentError.new('Array is empty. Pass a non-empty array.')
  	end
  	unless labels.is_a?(Array) == true
  		raise ArgumentError.new('Please pass an array.')
  	end
  end

  def each(&block)
  	@labels.each do |label|
  		block.call(label)
  	end
  end

  def sides
  	@sides = @labels.size
  end

  def roll
  	prng = Random.new
  	die_roll = prng.rand(0...@sides)
  	@labels[die_roll]
  end
end
=end

# Reflection
=begin
- What were the main differences between this die class and the last one you created in terms of implementation?
  Did you need to change much logic to get this to work?
There are two main differences between this die class and the first one. The sides method for this class calls the size method
on the input array in order to return the number of sides. The roll method implements a random number generator in the same
way that the original die class did except this time the method uses the rng output to select a random element from the array.
The logic is very similar to the original die class.

- What does this exercise teach you about making code that is easily changeable or modifiable? 
I learned that making code that is easily modifiable can save time and effort. I was able to adapt my original die
class to accept an array instead of an integer, which made this challenge much easier than it would have been if I had
needed to start from scratch. In fact, I had time to experiment with creating a method that rolls the die a number of times
and outputs a hash of the results. It was fun to roll the die 10,000, 100,000 and a million times and see how much longer 
the computer took to process each increment. I wouldn't advise rolling more than a million times!

- What new methods did you learn when working on this challenge, if any?
I didn't need to implement any new methods.

- What concepts about classes were you able to solidify in this challenge?
This challenge helped highlight the power of instance variables in classes. I only needed two instance variables to get
the sides and roll methods to work, and I was able to create an additional method that rolls the die any given number of times
without having to create an additional instance variable.





=end