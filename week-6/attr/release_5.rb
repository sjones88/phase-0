# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end


end

profile = Profile.new
puts 'How old are you?'
profile.age = gets.chomp
puts 'What\'s your name?'
profile.name = gets.chomp
puts 'What\'s your occupation?'
profile.occupation = gets.chomp
puts '-----Printing profile info-------'
20.times do
  print '.'
  sleep 0.1
end
profile.print_info