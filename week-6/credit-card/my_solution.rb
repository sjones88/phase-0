# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Caroline Kenworthy.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: a 16 digit number
# Output: a boolean
# Steps: 
=begin
Method 1:
1. Convert input number to an array
2. Reverse the array
3. Iterate through odd indicies of the array, doubling each digit

Method 2:
1: Convert all elements to strings
2. Conditional: IF array[element] length is greater than 1,
THEN insert a space between each digit 

string.insert(1, " ")
3. Flatten the array
4. Sum all elements

Method 3: 
1: UNLESS sum % 10 is zero
THEN return false

=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
  def initialize(cc_num)
    @cc_num = cc_num
    if cc_num.to_s.length > 16 || cc_num.to_s.length < 16
      raise ArgumentError.new('Card number must be 16 digits')
    else
    end
    
  end
  
  def double_odds
    @cc_string = @cc_num.to_s
    
    @split_digits = @cc_string.split("")
    odd_digits = []
    
    @split_digits.select.each_with_index do |digit, index| 
      if index.even? # Changed this from ...index.odd?
        odd_digits.push(digit)
      end
    end
    
    odd_digits = odd_digits.map {|digit| digit.to_i}
    @odd_digits = odd_digits.map {|digit| digit * 2}
    
#    p odd_digits
#    p @odd_digits
#    p @cc_string
#    p @cc_num
  end 
  
  def sum_digits
    
    even_digits = []
    
    @split_digits.select.each_with_index do |digit, index| 
      if index.odd? # Changed from ...index.even?
        even_digits.push(digit)
      end
    end

    @odd_digits = @odd_digits.map {|digit| digit.to_s}
    @concated_digits = @odd_digits.concat(even_digits)
    @concated_digits = @concated_digits.join.split("")
    @concated_digits = @concated_digits.map {|digit| digit.to_i}
    @summed_digits = @concated_digits.inject {|sum, a| sum + a}  
  end
  
  def modulus_ten
    if @summed_digits % 10 == 0
      return true
    else
      return false
    end
  end
  
  def check_card
    double_odds
    sum_digits
    modulus_ten
  end
  
end

card = CreditCard.new(4408041234567901)

p card.double_odds
p card.sum_digits
p card.modulus_ten
p card.check_card
=end
# Refactored Solution

class CreditCard
  def initialize(cc_num)
    @cc_num = cc_num
    if cc_num.to_s.length > 16 || cc_num.to_s.length < 16
      raise ArgumentError.new('Card number must be 16 digits')
    else
    end
  end
  
  def double_odds
    @cc_string = @cc_num.to_s
    @split_digits = @cc_string.split("")
    odd_digits = []
    @split_digits.each_with_index do |digit, index| 
      if index.even? # Changed this from ...index.odd?
        odd_digits.push(digit)
      end
    end
    odd_digits = odd_digits.map {|digit| digit.to_i}
    @odd_digits = odd_digits.map {|digit| digit * 2}
  end 
  
  def sum_digits
    even_digits = []
    @split_digits.each_with_index do |digit, index| 
      if index.odd? # Changed from ...index.even?
        even_digits.push(digit)
      end
    end
    @odd_digits = @odd_digits.map {|digit| digit.to_s}
    @concated_digits = @odd_digits.concat(even_digits)
    @concated_digits = @concated_digits.join.split("")
    @concated_digits = @concated_digits.map {|digit| digit.to_i}
    @summed_digits = @concated_digits.inject {|sum, a| sum + a}  
  end
  
  def modulus_ten
    if @summed_digits % 10 == 0
      return true
    else
      return false
    end
  end
  
  def check_card
    double_odds
    sum_digits
    modulus_ten
  end  
end


# Reflection
=begin
- What was the most difficult part of this challenge for you and your pair?
Our initial solution was able to pass all but one of the spec tests, and we struggled to figure out where the problem.
We solved the problem by printing output to the console at several points in the code and checking the output against 
what we expected the code to output.

- What new methods did you find to help you when you refactored?
We felt that our code was quite DRY and didn't find any new methods that would make our code more concise and readable.

- What concepts or learnings were you able to solidify in this challenge?
I was able to solidify my understanding of the #each_with_index enumerable. It was very useful for selectively interating
through arrays.


=end