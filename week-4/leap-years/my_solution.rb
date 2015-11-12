
# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(year)
 year.to_i
     if (year%4 != 0)
         return false
     elsif (year%400 == 0)
         return true
     elsif (year%100 == 0)
         return false
     else
         return true
    end
end