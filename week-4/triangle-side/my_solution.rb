# I worked on this challenge with Benjamin Shpringer.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  a.to_f
  b.to_f
  c.to_f
  if a == 0 || b == 0 || c == 0
  	return false
  elsif (a + b) < c
  	return false
  elsif (b + c) < a
  	return false
  elsif (a + c) < b
  	return false
  else
  	return true
  end
  if a == b && b == c
  	return true
  	puts 'True, an equilateral triangle.'
  end
  if (a**2 + b**2) == c**2 || (b**2 + c**2) == a**2 || (c**2 + a**2) == b**2
  	return true
  	puts 'True, a right triangle.'
  end

end