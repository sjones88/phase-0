# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is any positive integer.
# What is the output? (i.e. What should the code return?) The output is a string 
# representation of the input integer with appropriately placed commas for integers
# with 4 or more digits.
# What are the steps needed to solve the problem?
# for all positive integers,
#   - convert input to string
#   - measure length of that string
#   - if string length >= 4, then insert comma after every 3rd digit from the right.


# 1. Initial Solution
def separate_comma(integer)
#	integer.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(',').reverse
#	str_int = integer.to_s
#	rev_str_int_ary = str_int.chars.reverse
#	join_ary = rev_str_int_ary.each_slice(3).map(&:join)
#	rev_str = join_ary.join(',')
#	print rev_str.reverse

	int_string = integer.to_s
	length = int_string.length
	int_array = int_string.split(//)
	reverse_int_array = int_array.reverse
	reverse_int_array.each_slice(3) do |slice|
		sliced_arr = slice + [',']
		print sliced_arr.join
	
	end
end

separate_comma(1000000000000000000)


# 2. Refactored Solution




# 3. Reflection