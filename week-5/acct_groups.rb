=begin
Pseudocode:
Input: an array of names (strings)
Output: arrays of groups of at least 3
Steps: 
- Create a hash with names and random numbers
- Sort hash by values
- Put names (keys) into a new array
- Slice the new array at every 4th element
=end
# Initial solution:
def acct_groups(people)
  rand_names = Hash.new(0)
  people.each { |name| rand_names[name] += rand }
  rand_names = rand_names.sort_by {|x,y| y}
  rand_names = rand_names.map { |a| a[0]}
  if (people.length % 4) > 1
    rand_names.each_slice(4) { |name| p name }
  elsif (people.length % 3) > 1
  	rand_names.each_slice(3) {|name| p name}
  else
  	rand_names.each_slice(5) {|name| p name }
  end
end
p acct_groups(['Jane Suave', 'Mrs. Doubtfire', 'Boba Fet', 'Master Rahool','Jerry Jones', 'Aaron Rodgers', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen'])

# Refactored solution:
def acct_groups(people)
	rand_names = Hash.new(0)
	people.each {|name| rand_names[name] += rand}
	rand_names = rand_names.sort_by {|x,y| y}
	rand_names = rand_names.map {|a| a[0]}
	if (people.length % 4) > 1
      rand_names.each_slice(4) { |name| p name }
    elsif (people.length % 3) > 1
  	  rand_names.each_slice(3) {|name| p name}
    else
  	  rand_names.each_slice(5) {|name| p name }
    end
end
p acct_groups(['Jane Suave', 'Mrs. Doubtfire', 'Boba Fet', 'Master Rahool','Jerry Jones', 'Aaron Rodgers', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen'])

=begin
Reflection:
- What was the most interesting and most difficult part of this challenge?
The most interesting and difficult part of this challenge was coming up with a way to rearrange the list of names so that the method
would shuffle the list of names and return them in a random order.

- Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, I feel like I'm starting to get the hang of it, and I'm confident that I'll continue to improve with more practice.

- Was your approach for automating this task a good solution? What could have made it even better?
My solution is very basic, but it achieves the goal of placing names in groups of 3 to 5.

- What data structure did you decide to store the accountability groups in and why?
The groups are returned in arrays. I initially wanted to return a hash of group numbers and names but I ran into some problems. If I had more time,
I would figure out how to make that arrangement work.

- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I actually couldn't find any new methods that would allow me to shorten my initial code.

=end