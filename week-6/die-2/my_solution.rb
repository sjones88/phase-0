# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

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


- What does this exercise teach you about making code that is easily changeable or modifiable? 


- What new methods did you learn when working on this challenge, if any?


- What concepts about classes were you able to solidify in this challenge?






=end