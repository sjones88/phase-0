# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of numbers (integers or floats) or strings
#
# What is the output? (i.e. What should the code return?)
# An array of the most frequent values
#
# What are the steps needed to solve the problem?
# Get a unique version of the input array and assign it a variable.
# Create new hash with default value of 0.
# Populate new hash with unique_array elements as keys and values = 1.
# 
#
#


# 1. Initial Solution
def mode(array)
	a_uniq = array.uniq
	freq = Hash.new(0)
	a_uniq.each do |item|
		freq[item]
	end
	array.each { |item| freq[item] += 1 }
	freq = freq.sort_by {|x,y| y }.reverse!
	freq = freq.group_by {|a,b| b}.max.last
#	p freq
	if freq.size > 1
		freq.map { |x| x[0] }
	else
		return [freq[0][0]]
	end
=begin
	if freq[0][1] > freq[1][1]
		freq.flatten!
		freq.first(n=1)
#	elsif freq[0][1] == freq[1][1]
#		freq.each { |a,b| }

	else
		freq.max_by { |x,y| x[1] <=> y[1] }
		
	end
=end
#	freq.flatten!
#	freq.first(n=1)
end
p mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])


# 3. Refactored Solution




# 4. Reflection
=begin
- Which data structure did you and your pair decide to implement and why?

- Were you more successful breaking this problem down into implementable pseudocode
than the last with a pair?

- What issues/successes did you run into when translating your pseudocode to code?

- What methods did you use to iterate through the content? Did you find any good ones 
when you were refactoring? Were they difficult to implement?

=end