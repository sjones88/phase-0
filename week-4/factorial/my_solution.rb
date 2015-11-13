# Factorial

# I worked on this challenge with Benjamin Shpringer.


# Your Solution Below
def factorial(number)
	if number == 0 || number == 1
		return 1
	else
		product = number
		while number > 1
  		  product = product*(number - 1)
  		  number = (number - 1)
  		end
  	end
	return product
end