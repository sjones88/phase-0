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
#def separate_comma(integer)
#	str_int = integer.to_s
#	rev_str_int_ary = str_int.chars.reverse
#	join_ary = rev_str_int_ary.each_slice(3).map { |a| a.join }
#	rev_str = join_ary.join(',')
#	print rev_str.reverse
=begin
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
=end

# 2. Refactored Solution
def separate_comma(integer)
	int = integer.to_s
	int = int.chars
	int = int.reverse
	int = int.each_slice(3)
	int = int.map { |a| a.join }
	int = int.join(',')
	int = int.reverse
end
p separate_comma(2818958182)

# 3. Reflection
=begin
- What was your process for breaking the problem down? What different approaches did you consider?
First, I knew that I needed to convert the integer to either a string or an array just to be able to 
manipulate it. Then, I figured that it would be easiest to reverse the array and place commas every 
third element. I simply couldn't conceive of a way to place the commas properly without reversing the array.

- Was your pseudocode effective in helping you build a successful initial solution?
The pseudocode wasn't particularly helpful in this case because there were a couple of methods that I needed
and didn't know about before researching in the Ruby docs and 'Well-Grounded Rubyist'.

- What new Ruby method(s) did you use when refactoring your solution? 
Describe your experience of using the Ruby documentation to implement it/them 
(any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I actually eliminated a method when I refactored; I wasn't able to implement the split method so I dropped it.
The Ruby documentation was essential. I learned about the chars and each_slice methods while researching for
this challenge. There were a number of other methods that I tried to use, and I think I learned as much about
what works by trying and failing to implement methods as I learned from successfully implementing the methods in the
refactored solution.

- How did you initially iterate through the data structure?
The first iterator I used was each_slice. The second was map.

- Do you feel your refactored solution is more readable than your initial solution? Why?
The refactored solution is far more readable than the initial solution. I intentionally gave each method its own line
so that I could easily print each step to the console. This helped me to understand exactly what each step was doing.


=end