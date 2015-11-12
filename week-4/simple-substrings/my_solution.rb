# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below
def welcome(address)
	address.to_s.upcase
	if /CA/.match(address)
		return "Welcome to California"
	else
		return "You should move to California"
	end
end