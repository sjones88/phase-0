# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4 hours on this challenge.


# Release 0: Pseudocode
=begin
- Keep all of the logic and variables inside of the class BingoBoard. Method calls should be outside.
- Initialize a new instance of the BingoBoard using the provided board array.
- Create a method to call letters and numbers (like B43). It will need to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
- Create a method to check whether that column has that number in the existing bingo_board.
- If the number is in the column, replace it with an "X".
- Display the new board to the console (Make it pretty).

# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  - Return a random number 0-5, inclusive
  - Return a random number 1-100, inclusive
  - Store the numbers in an array, [[x],[y]], and store that array in an instance variable called 'bingo_call'

# Check the called column for the number called.
  - Iterate through board rows with index
    - iterate through rows with index
      - IF number equals the called number AND index corresponds to called letter
        THEN...

# If the number is in the column, replace with an 'x'
  ...replace the bingo board value at indicies

# Display a column to the console
  - iterate through bingo board, printing each element to the console

# Display the board to the console (prettily)
  - iterate through board, displaying each element
=end
# Initial Solution

class BingoBoard

  attr_reader :bingo_board

  def initialize(board)
    @called_num = 47
    @called_letter_as_num = 0
    @bingo_board = board
  end

  def letter_num_generator
    prng = Random.new
    @called_letter_as_num = prng.rand(0...5)
    if @called_letter_as_num == 0
      @called_letter = 'B'
    elsif @called_letter_as_num == 1
      @called_letter = 'I'
    elsif @called_letter_as_num == 2
      @called_letter = 'N'
    elsif @called_letter_as_num == 3
      @called_letter = 'G'
    else
      @called_letter = 'O'
    end
    @called_num = prng.rand(1..100)
    return @called_letter + ' ' + @called_num.to_s
  end

  def match?
    @match = 0
    @bingo_board.each_with_index do |row, row_index|
      row.each_with_index do |cell, index|
          if cell == @called_num && index == @called_letter_as_num
            @bingo_board[row_index][index] = 'X'
            puts "#{@called_letter} #{@called_num} is a match!"
            puts
            @match += 1
            @bingo_board.each {|row| p row}
            puts
        end
      end
    end
  end

  def play_game
   # calls_made = 0
    while @match != 25
      letter_num_generator
     # calls_made += 1
      match?
    end
  end
end

# Refactored Solution
# I think my initial solution is pretty concise (and I'm afraid to break it by implementing fancy new methods).


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play_game

#Reflection
=begin
- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding this challenge was not particularly helpful because I was only able to get the code to work (to the extent that it does work) through a lot of trial and error.
I think my pseudocoding 'style' leaves a lot to be desired, but it's difficult at this stage because I still have to experiment as I code in order to get a solution that works.

- What are the benefits of using a class for this challenge?
I don't want to think about how hard this challenge would be without the benefit of instance variables. Being able to pass variables between methods is indispensable here.

- How can you access coordinates in a nested array?
You access coordinates in a nested array from the outermost array inward.

- What methods did you use to access and modify the array?
I used each_with_index to access and modify the 'rows' and 'columns'.

- Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
each_with_index iterates over an array and returns the value and its index to the block. It's called in the same way that
you call the ordinary .each iterator, except you pass .each_with_index two arguments before the block instead of one argument. This is hugely helpful for iterating over nested arrays.

- How did you determine what should be an instance variable versus a local variable?
If I needed the information stored in the variable to be accessible between methods, I stored it in an instance variable.

- What do you feel is most improved in your refactored solution?
I tried (and failed) to refactor my solution without breaking it and really couldn't come up with a more concise or readable alternative to my initial solution.
I tend to refactor as I write a solution, which may or may not be a bad habit.












=end
