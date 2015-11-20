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
# We ended up refactoring as we worked on the solution, so the solution above is effectively our refactored solution.


# 3. Reflection
=begin
- Were you successful in breaking the problem down into small steps?
Yes. We found it essential to break the problem down into small steps in order to
even be able to approach the problem.

- Once you had written your pseudocode, were you able to easily translate it into code?
What difficulties and successes did you have?
The process of writing the pseudocode helped us to clarify our intial thinking about
how to approach the problem. We were able to get very close to a solution based on
our translation of our pseudocode into code. We wrote the pad! solution first, and ran into
a problem when we were writing the non-destructive pad solution.

- Was your initial solution successful at passing the tests? If so, why do you
  think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution for the destructive pad! method passed the spec tests, but we had some problems
with the non-destructive pad method. Specifically, the line where we assigned the 'new_array'
local variable to the 'array' argument gave us headaches because we didn't realize that, without
the dup method, 'new_array' would point to the same object as 'array', thereby causing our
method to modify 'array'.

- When you refactored, did you find any existing methods in Ruby to clean up your code?
We found ourselves refactoring the solution as we worked. If we found useful methods as we 
scoured the Ruby docs, we implemented them right away. I think this turned out to be an effective
approach.

- How readable is your solution? Did you and your pair choose descriptive variable names?
I think our code is pretty readable. We tried to choose intuitive variable names so that we could
understand what they were doing at a glance.

- What is the difference between destructive and non-destructive methods in your own words?
Destructive methods modify their receiver objects, while non-destructive methods return
a new object and leave the receiver unchanged so that when you call the receiver object after
you've run the method, you get the original object.
=end








