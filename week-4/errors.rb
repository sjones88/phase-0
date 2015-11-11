# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file with the error is errors.rb.
# 2. What is the line number where the error occurs?
# The error occurs on line 170.
# 3. What is the type of error message?
# This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter says it received an unexpected end-of-input when it was expecting keyword_end.
# 5. Where is the error in the code?
# The interpreter says the error occurred at the end of the last line of the code.
# 6. Why did the interpreter give you this error?
# The code needs one more 'end' to finish the while loop.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The line number is 37.
# 2. What is the type of error message?
# This is a name error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says there is an undefined local variable or method.
# 4. Where is the error in the code?
# The error is in the first and only line of code.
# 5. Why did the interpreter give you this error?
# 'south_park' is not an object that the interpreter recognizes and it isn't defined in the code.
# The interpreter tried to call 'south_park' as a method on the 'self' object, and was unsuccessful.
# 'south_park' would have to be defined as a local variable or method before it could be passed a message or called.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# The error occurs on line 53.
# 2. What is the type of error message?
# This is a 'NoMethodError'.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the cartman() method is undefined for the main object.
# 4. Where is the error in the code?
# The error is in the first and only line of the code.
# 5. Why did the interpreter give you this error?
# The interpreter gave the error because the code attempted to call the undefined cartman()
# method on the main object, while the method is undefined for its receiver. We would have to 
# define the method properly before we could call it on an appropriate object.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error occurs on line 70.
# 2. What is the type of error message?
# This is an 'ArgumentError'.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the cartmans_phrase method is being passed one argument when it doesn't
# accept any arguments.
# 4. Where is the error in the code?
# The error is in line 74, where the code tries to call the method with the argument 'I hate Kyle'.
# 5. Why did the interpreter give you this error?
# The interpreter gave the error because, as the cartmans_phrase method is defined, it
# doesn't accept any arguments, and the code tries to pass the method an argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

# cartman_says

# 1. What is the line number where the error occurs?
# The error occurs on line 91.
# 2. What is the type of error message?
# This is an 'ArgumentError'.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the method is receiving the wrong number of arguments.
# 4. Where is the error in the code?
# The error is in line 95 where the cartman_says method is called with no argument.
# 5. Why did the interpreter give you this error?
# The interpreter gave the error because cartman_says is a method that takes one argument,
# and the code is calling it without an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

 # cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# The error occurs on line 113.
# 2. What is the type of error message?
# This is an 'ArgumentError'.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the cartmans_lie method is being passed the wrong number of arguments.
# 4. Where is the error in the code?
# The error is in line 117 where the code calls the cartmans_lie method with one argument, when it
# accepts two arguments.
# 5. Why did the interpreter give you this error?
# The interpreter gave the error because the cartmans_lie method accepts two arguments, and the
# code only passed it one argument on line 117.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# The error occurs on line 134.
# 2. What is the type of error message?
# Ths is a 'TypeError'.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that the string can't be coerced into Fixnum.
# 4. Where is the error in the code?
# The error is in the first and only line of the code.
# 5. Why did the interpreter give you this error?
# The interpreter gave the error because a string can't do arithmetic on a fixnum. If the 
# objective of the code is to multiply the string 5 times, then the order of the arguments would
# have to be switch, like this: "Respect my authoritay!" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# The error occurs in line 151.
# 2. What is the type of error message?
# This is a 'Zero Division Error'.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the code tried to divide something by zero.
# 4. Where is the error in the code?
# The error is on the right side of the equals sign in the code.
# 5. Why did the interpreter give you this error?
# The interpreter gave the error because 20/0 is a non-real number. The expression 'x/0'
# is always undefined.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error occurs on line 168.
# 2. What is the type of error message?
# This a 'Load Error'.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says it cannot load the cartmans_essay.md file.
# 4. Where is the error in the code?
# The error occurs after the require_relative part of the code.
# 5. Why did the interpreter give you this error?
# The interpreter gave the error because the code is requiring the interpreter to find 
# a file called cartmans_essay.md, and no such file exists in any directory on this machine.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
- Which error was the most difficult to read?
The first error was probably the most tricky because of the line number and location that the error message gave.
- How did you figure out what the issue with the error was?
The error message gave two key pieces of information that helped me figure out the cause of the issue: syntax error and 'unexpected end-of-input, expecting keyword_end'.
I suspected that the code was causing an infinite loop, and the fact that the error gave the final line of the page as the error location suggested to me that
the interpreter was looking for an end to the while loop in the code. I tested my suspicion by adding another 'end' to the code and found that that solved the problem.
- Were you able to determine why each error message happened based on the code?
Yes, I noticed a pattern in the different errors where methods were being passed the wrong number of arguments. I knew that x/0 is always undefined, I guessed that require_relative
would try to find a file that didn't exist on my computer, and I remembered reading about string arithmetic in Pine's book.
- When you encounter errors in your future code, what process will you follow to help you debug?
Now that I understand the basic structure of error messages, I think I'll be able to use Google to debug errors, going forward.

=end
