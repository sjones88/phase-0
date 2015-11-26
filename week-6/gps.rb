# Your Names
# 1) Steve Jones
#

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.


# Two stages of refactoring.
# 1. Readability. aka renaming variables.
# 2. Logic and redudancy. aka keeping your code DRY.

# You ALWAYS do readability first.
# Because it is unlikely to break anything.
# AND can make refactoring logic easier as well.


# library, container, counter.

# container = []
# list_of_students = []


def serving_size_calc(item_to_make, available_ingredients)
  available_foods = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3
  
  # I have 10 ingredients. 10 bags of flour.
  # I know if I divide 10 % 5, I can make 2 cakes.
  
  
  
  # library is the __________.
  
  
  # Iterate through each item in the library...
  #available_foods.each do |food|
    # The food variable represents the current food/key in the library.
    # IF the current_food is NOT equal to the item_to_make...
   # if available_foods[food] != available_foods[item_to_make]
    if available_foods.include?(item_to_make) == false
      # THEN, subtract one from error counter. 
      # p error_counter += -1
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
#  end
  
  # 1. Hash#include?(item_to_make)
  
  
  
  # Hash[key] => value
  # library["Banana"] => nil
  
  # if error_counter == 0...
  # Even if we dont understand how this is working.
  # The purpose is to raise an error if item_to_make is not in the library.
  # if error_counter > 0
  #  raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

  # serving_size is actually the ingredients_needed_for_item_to_make.
  # ingredients_needed
  # ingredients_needed = available_foods.values_at(item_to_make)[0]
  # 2. IS there a simple way, to return to value, for a key in a hash.
  ingredients_needed = available_foods[item_to_make]
  # Array[index] => element
  # Hash[key] => value
  # ingredients_needed = available_foods[item_to_make]

  
  # Where have we seen [0] before...
  # - Calling an index on an array.
  
  # So we can assume that values_at returns an array.
  # values_at returns an array or all values that macth the key, item_to_make.
  # HOWEVER, becuase a hash cannot have duplicates keys, we will ALWAYS have a single element array.
  
  # library.values_at("cake")
  # => [5]
  
  # [5][0]
  # => 5
  # So essentially this is converting the single element array into an integer.
  
  
  leftover_ingredients = available_ingredients % ingredients_needed
  # leftover_ingredients = available_ingredients % ingredients_needed
  
  
  # aka the remainder.
  # Why are they calling leftover ingredits.
  
  # leftover_ingredients = order_quantity % serving_size
  # leftover_ingredients = available_ingredients % serving_size

  case leftover_ingredients # remainder
  when 0
    # When there is no remainder, do this...
    return "Calculations complete: Make #{available_ingredients/ingredients_needed} of #{item_to_make}"
  else
    # If there is a remainder, do this...
    # ingredients != items
    return "Calculations complete: Make #{available_ingredients/ingredients_needed} of #{item_to_make}, you have #{leftover_ingredients} leftover items."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)
=begin
#  Reflection
- What did you learn about making code readable by working on this challenge?
I learned that it's incredibly important to choose variable names that accurately refer to the function of the variable. Virtually none of the variables in this code did what 
their names implied, and that made understanding the code incredibly frustrating.

- Did you learn any new methods? What did you learn about them?
I was reminded about the Hash#include? method. It's a much more efficient way to determine whether or not an input value is a key in a hash.

- What did you learn about accessing data in hashes? 
I learned that accessing data in a hash via key generally makes more sense than converting the hash to an array (by calling the values_at method, for example) and accessing 
the array. In other words, the direct method is more efficient than the more indirect method.

- What concepts were solidified when working through this challenge?
What really stood out to me was the importance of writing good variable names. This challenge also highlighted the importance of keeping the code as parsimonious as possible.





=end