# Research Methods

# I spent 3 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 3
def my_array_sorting_method(source)
  strings = source.grep(String)
  ints = source.grep(Fixnum)
  sorted_strings = strings.sort { |x,y| x <=> y }
  sorted_ints = ints.sort { |x,y| x <=> y }
  sorted_source = sorted_strings.unshift(sorted_ints).flatten!
end


def my_hash_sorting_method(source)
  src_ary = source.to_a
  src_ary.sort_by! { |x,y| y }
end

p my_hash_sorting_method(my_family_pets_ages)
p my_array_sorting_method(i_want_pets)

=begin
Identify and describe the Ruby method(s) you implemented.
- grep: Calling grep on 'source' with the 'String' argument returns an array of the strings in the 'source' array.
It excludes anything in 'source' that isn't a string (in this case, it excludes the integers). The same idea applies
on the next line, where I call grep on 'source' to return an array of the Fixnums in 'source'.
- unshift: Calling unshift on 'sorted_strings' with the argument 'sorted_ints' inserts the array
of sorted integers ('sorted_ints') at the beginning of the 'sorted_strings' array.
- flatten!: Calling flatten! merges the 'sorted_ints' array with the 'sorted_strings' array so that the
whole thing is a one-dimensional array. I used the destructive flatten! method to do the operation in place,
but it's probably not necessary since the block on line 45 is returned and assigned to a single variable.
- sort: The sort method compares elements one after another and the block tells the method how to sort the elements.
- to_a: I called to_a on the method's argument to convert the input from a hash to an array of 2-element arrays.
This is necessary because the method that I use next takes arrays and not hashes.
- sort_by!: I called sort_by! to sort the 2-element arrays by the value of the second element.
=end

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#