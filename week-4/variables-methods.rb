puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
mid_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
full_name = first_name + ' ' + mid_name + ' ' + last_name
puts 'Your name is ' + first_name + ' ' + mid_name + ' ' + last_name + '? What a lovely name!'
puts 'Pleased to meet you, ' + first_name + ' ' + mid_name + ' ' + last_name + '.'
puts 'What\'s your favorite number, ' + full_name + '?'
favnum = gets.chomp.to_i
better_num = favnum + 1
puts favnum.to_s + ' is a good number, but may I suggest ' + better_num.to_s + ' as your new, bigger, better favorite number?'

=begin
Address solution: https://github.com/sjones88/phase-0/blob/master/week-4/address/my_solution.rb
Define-method solution: https://github.com/sjones88/phase-0/blob/master/week-4/define-method/my_solution.rb
Math methods solution: https://github.com/sjones88/phase-0/blob/master/week-4/math/my_solution.rb

- How do you define a local variable?
You define a local variable by typing the name of the variable (e.g. variable_name)
followed by an equals (=) sign followed by the object to which you want the variable
to point. For example, typing:
	var_name = 'String'
defines the local variable, 'var_name', and points it to the string, 'String'.

- How do you define a method?
You define a method by typing 'def', then typing the method name, followed by
the parameters that the method will take (if it takes any parameters). Always
finish defining a method by typing 'end' on a new line at the end of the method.
For example, typing:
	def method_name (a, b)
	end
defines a method called 'method_name' that accepts two arguments, 'a' and 'b'.

- What is the difference between a local variable and a method?
A local variable is an object, and a method is a message that can be sent
to an object, like a local variable, and can cause its object to do something.

- How do you run a ruby program from the command line?
You run a ruby program from the command line by typing 'ruby FILENAME', where
FILENAME is any file with the .rb extension.

- How do you run an RSpec file from the command line?
You type 'rspec FILENAME', where FILENAME is the name of the spec file ending
with the .rb extension.

- What was confusing about this material? What made sense?
I got confused when I tried to run my favorite number program and it returned
an error. I learned the importance of converting fixnums to strings when puts-ing
a combination of fixnums and strings.

=end