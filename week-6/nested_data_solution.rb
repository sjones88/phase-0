# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
 p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
 p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
 p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array = number_array.map do |number|
  if number.kind_of?(Array)
    number.map {|inner| inner += 5}
  elsif number.kind_of?(Integer)
    number += 5
  end
end
p number_array


    


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
flat_names = startup_names.flatten!
flat_names = flat_names.map {|item| item.to_s + "ly"}
p flat_names

=begin
startup_names = startup_names.map do |name|
  if name.kind_of?(String)
    name.to_s + "ly"
  elsif name.kind_of?(Array)
    name.map {|item| item.to_s + "ly"}
  end
=begin
  if name.kind_of?(Array)
    name.each {|inner| inner + "ly"}
  end
=end
# p startup_names

=begin
Reflection:
- What are some general rules you can apply to nested arrays?
The syntax for accessing array elements always moves from the outermost array inward.

- What are some ways you can iterate over nested arrays?
You can incorporate conditional statements and selection methods (e.g. #kind_of?) into your iterator to target nested arrays.

- Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We reused methods that we were familiar with. Fortunately, the challenge was fairly intuitive.








=end