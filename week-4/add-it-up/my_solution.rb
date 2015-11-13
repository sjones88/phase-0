# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Benjamin Shpringer.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Each integer in the array
# Output: Sum of inputs
# Steps to solve the problem.


# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution

def total(num)
	num.inject {|x,y| x + y }
end

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