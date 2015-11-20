# Pad an Array

# I worked on this challenge with Mason Pierce.

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.
# 


# 0. Pseudocode

# What is the input?
# Input: an array, a non-negative integer that defines the minimum
# size of the padded array, an optional object (any object) with which to
# pad the original array.
#  
# What is the output? (i.e. What should the code return?)
# At a minimum, we want to output the original array, even if min_size is smaller
# than the size of the array. If min_size > array size, output will be a padded array.
# Output will consist of original array + "min_size" number of "value" values.
# 
# What are the steps needed to solve the problem?
# Get size of array.
# If min_size <= array size, then return array.
# If min_size > array size, then:
# 	- Calculate difference between min_size and array size
# 	(min_size - array.size?)
#   - Add that number of "value" elements to the end (right side) of the array
# return array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  a_size = array.size
  if min_size <= a_size
  	array
  elsif min_size > a_size
  	diff = min_size - a_size
  	diff.times do
  		array.push(value)
  	end
end
array
end

def pad(array, min_size, value = nil) #non-destructive
  a_size = array.size
  new_array = array.dup
  if min_size <= a_size
  	array
  elsif min_size > a_size
  	diff = min_size - a_size
  	diff.times do
  		new_array.push(value)
  	end
end
new_array
end

p pad!([1, 2, 3], 7)
p pad([1, 2, 3], 7, 'apple')
p pad([1,2,3], 0)

# 2. Refactored Solution



# 3. Reflection

