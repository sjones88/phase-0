# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Divide input string at spaces
# Set new strings to hash keys
  # set default quantity to 1
  # print the list to the console
# output: New hash with groceries: quantities as key: value pairs

def groceries(input)
  new_input = input.split(' ')
  list = Hash.new(1)
  new_input.each do |item|
    list[item] = 1
  end
  list
end


#p input
# output == {"carrots" => 1, "apples" => 1, "cereal" => 1, "pizza" => 1}

# p output["tangerines"] 


# Method to add an item to a list
# input: item name and optional quantity
# steps: check to see if key is already in hash 
#if not, add item name as key and quantity as value to existing hash with default quant as 1
# 
# output: Updated hash with groceries
#groc_proc = Proc.new do |items|
#  groceries(items)
#end
#p groc_proc.call 'Shallots!'

def add_item(list, item, qty)
#  groc_proc.call 'carrots shallots ehrmahgerd'
#  p thing
  if list.has_key?(item)
    puts "Item already on list"
  else
    qty.to_i
    list[item] = qty
  end
  list
end


# Method to remove an item from the list
# input: item to be removed
# steps: find the item
# remove the item (k/v)
# output: updated hash

def remove_item(list, item)
  if list.has_key?(item) == false
    puts "Nothing to remove"
  else
    list.delete(item)
  end
  list
end

# Method to update the quantity of an item
# input: the item we want to update
# steps:find that item in the hash
#update value
# output: updated hash

def change_qty(list, item, qty)
  if list.has_key?(item) == false
    puts "Item not found"
  else
    qty.to_i
    list[item] = qty
  end
  list
end

# Method to print a list and make it look pretty
# input: the hash
# steps: convert values to strings
# print out hash as a string
# output: stringified hash

def stringify(list)
  
  list.each do |item, qty|
    puts item + " ==> " + qty.to_s
  end
end

puts "Grocery list: "
input = gets.chomp
puts "You made a list with this:"
list = groceries(input)
p list
puts
puts "What item would you like to add?"
item = gets.chomp
puts "How many #{item}s?"
qty = gets.chomp
add_item(list, item, qty)
puts
puts stringify(list)
puts
puts "Which item would you like to remove?"
item = gets.chomp
remove_item(list, item)
puts
puts "Change quantity for which item?"
item = gets.chomp
puts "How many?"
qty = gets.chomp
puts
change_qty(list, item, qty)
puts "Here's your grocery list!"
p stringify(list)

