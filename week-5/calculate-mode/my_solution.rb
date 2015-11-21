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
=begin
def mode(array)
	a_uniq = array.uniq
	freq = Hash.new(0)
	a_uniq.each do |item|
		freq[item]
	end
	array.each { |item| freq[item] += 1 }
#	freq = freq.sort_by {|x,y| y }.reverse!
	freq = freq.group_by {|a,b| b}.max.last
#	p freq
	if freq.size > 1
		freq = freq.map { |x| x[0] }
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
#end
#p mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])
#p mode([5,6])


# 3. Refactored Solution
def mode(array)
	a_uniq = array.uniq
	freq = Hash.new(0)
	a_uniq.each { |item| freq[item] }
#	p freq
	array.each { |item| freq[item] += 1 }
#	p freq
	freq = freq.group_by {|a,b| b}.max.last
#	p freq
	if freq.size > 1
		freq = freq.map {|x| x[0]}
	else
		return [freq[0][0]]
	end
end
p mode([1,2,3,4,5,6,5,6])

# 4. Reflection
=begin
- Which data structure did you and your pair decide to implement and why?
We used both arrays and hashes. First we called the uniq method on the input argument to create
a new array of the unique elements. Then we created a hash with a default value of 0 and populated
it with the unique array elements as its keys and the frequency of their occurence in the input array as
the hash values. We used a combination of methods to sort our hash and to ultimately return an array
of the most common elements. 

- Were you more successful breaking this problem down into implementable pseudocode
than the last with a pair?
The pseudocode wasn't as helpful in this challenge. We spent a lot of time figuring out which methods
to use and how to implement them in order to make our method work properly.

- What issues/successes did you run into when translating your pseudocode to code?
Translating the first two steps of our pseudocode was pretty straightforward, but translating the 
third step was complex because it turned out to require several steps in the code. We could have
broken the problem down into smaller steps when we wrote the pseudocode.

- What methods did you use to iterate through the content? Did you find any good ones 
when you were refactoring? Were they difficult to implement?
We used the each, group_by, and map methods to iterate through the content. When we refactored, we
actually removed one of the iterators in order to make our method return the correct output in the correct order.
We had significant difficulty implementing the methods in the right order.
=end