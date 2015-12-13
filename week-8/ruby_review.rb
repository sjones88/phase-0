# Cipher Challenge

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # The downcase method takes coded_message (a string) and returns it with all lower case letters.
#   decoded_sentence = []                    # The split("") method takes the coded_message string and returns an array in which each character in coded_message is an element.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   #  
#             "h" => "d",   # This can be automated by creating an array of all letters, checking each input element for inclusion in the letters array, and grabbing the index of the matching letter. Then it's just a matter of adding the indexed letter minus 4 to a new array.
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # #each iterates over the input array
#     found_match = false  # found_match is set to false here so that the second 'if' statement runs if none of the conditions of the first if statement are satisfied. The second 'if' statement could be easily incorporated into the first. That would make the found_match variable unnecessary.
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y]
#         found_match = true
#         # break  # Not sure why this break is here. The program runs without it.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Creates an array of numbers from 0 to 9
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # This acts like an 'else' statement. It runs the block if none of the other conditions are met.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   # The method returns a string of the 'decoded_sentence' elements
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  coded_message_array = coded_message.downcase.split("")    
  space_chars = ["@", "#", "$", "%", "^", "&", "*"]     # An array of the characters that correspond to spaces
  letters_arr = ('a'..'z').to_a                         # An array of all of letters
  decoded_arr = []                                      # Empty array for collecting characters during iteration
  coded_message_array.each do |char|
    if letters_arr.include?(char)                       # Check if element is a letter. If element is a letter, get the corresponding letters array index value, subtract 4, and push the letter at the new index to the container array.
      index = letters_arr.index(char)
      decoded_arr << letters_arr[index - 4]
    elsif space_chars.include?(char)
      decoded_arr << " "
    else
      decoded_arr << char
    end  
  end
  decoded_message = decoded_arr.join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# Reflection
# Keep your reflection limited to 10-15 minutes!
# What concepts did you review or learn in this challenge?
# I reviewed the process of refactoring a method, written by someone else, for DRYness.

# What is still confusing to you about Ruby?
# Ruby has a dizzying...array of methods and I can get confused when trying to incorporate some new methods.

# What are you going to study to get more prepared for Phase 1?
# I intend to do as many of the review challenges as I can to prepare for Phase 1. The more practice I get, the more comfortable I feel with Ruby.


