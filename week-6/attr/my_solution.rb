#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: 
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = 'Steve'
	end
end


class Greetings
	def initialize
		@greeter = NameData.new
	end

	def hello
		puts "Hello, #{@greeter.name}! Nice to see you today."
	end
end
greet = Greetings.new
greet.hello

=begin
# Reflection
release_1.rb:
- What are these methods doing?
#initialize ~ Initializes an instance of the class with age, name, and occupation instance variables.
#print_info ~ prints the values of @age, @name, and @occupation to the screen
#what_is_age ~ returns the value of @age
#change_my_age= ~ Takes an argument, 'new age', and sets @age to 'new age'.
#what_is_name ~ returns the value of @name
#change_my_name= ~ Takes an argument and sets @name equal to the argument.
#what_is_occupation ~ Returns value of @occupation
#change_my_occupation ~ Takes an argument; sets @occupation equal to argument.

- How are they modifying or returning the value of instance variables?
See above explanation.
release_2.rb:
- What changed between the last release and this release?
Invoking attr_reader :age gives the class the same functionality as the #what_is_age method, so that method is no longer necessary.
- What was replaced?
The #what_is_age method was replaced.
- Is this code simpler than the last?
Yes. It's much simpler.
release_3.rb:
- What changed between the last release and this release?
attr_reader and attr_writer are called on @age
- What was replaced?
#change_my_age is no longer necessary because it was replaced by attr_writer :age
- Is this code simpler than the last?
Yes

Reflection:
- What is a reader method?
A reader method endows instances of a class to return the value of a given instance variable by calling the variable name on the class object. The syntax of the reader method is
attr_reader :instance_variable
The syntax of a reader method call is
class_object.instance_variable

- What is a writer method?
The writer method is similar to the reader method that I just described except instead of allowing the instance of a class to reader a given instance variable, the writer method
allows the class object to change the value of an instance variable. The syntax of the method is
attr_writer :instance_variable
and the syntax of the method call is
class_object.instance_variable = new_value

- What do the attr methods do for you?
attr methods are essentially a short hand for endowing class objects with ability to read or write specified instance variables.

- Should you always use an accessor to cover your bases? Why or why not?
You should only use an accessor when you really want your class objects to have read or write access to an instance variable.

- What is confusing to you about these methods?
I think I understand these methods pretty well.




=end