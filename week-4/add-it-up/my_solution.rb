# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Benjamin Shpringer.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of integers
# Output: Sum of inputs
# Steps to solve the problem.
# Sum the objects in the array.

# 1. total initial solution

def total(num)
	sum = num.inject {|x,y| x + y }
	return sum
end

# 3. total refactored solution

def total(num)
	num.inject {|x,y| x + y }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings.
# Output: A grammatically correct sequence of the strings in the array.
# Steps to solve the problem.
# Capitalize the first letter of the first string.
# Iterate through the array:
#   - Convert objects to strings
#   - Add string to variable followed by a space
# Remove last space from variable
# Add '.' to variable string

# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution



def sentence_maker(string)
	string[0] = string[0].capitalize
	phrase = ''
	string.each do |word|
		phrase = phrase + word.to_s + ' '
	end
	phrase = phrase.chop
	phrase = phrase + '.'
	return phrase
end

