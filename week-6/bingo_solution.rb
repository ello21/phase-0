# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Store random number from 0 - 4 (corresponds to the # of indexes/columns in array containing 5 letters)
  # Use the random number as index number to select one letter from the letter array
  # Store random number from 1 - 100, use as number portion of combo
  # Return letter + number

# Check the called column for the number called.
  # Each index of the board is a sub-array or a ROW of the bingo board
  # Iterate through each ROW, using the column number as the index to check


# If the number is in the column, replace with an 'x'
  # If you find a match at the ROW/COLUMN intersection for the number
    # Replace the value with an "X"
  # (Do nothing otherwise)

# Display a column to the console
  #Print letter that corresponds to the random index number generated

# Display the board to the console (prettily)
  # Print each ROW followed by a new line
    # Within each ROW, print each element followed by a space

# Initial Solution

# class BingoBoard
#   def initialize(board)
#     @bingo_board = board
#   end

#   # Generate random letter and number combination
#   def call
#     # Generate random number corresponding to number of columns/indexes
#     @column_num = rand(0..4)

#     # Use random number as index number to select letter label
#     @letter = ["B", "I", "N", "G", "O"][@column_num]

#     # Generate random number
#     @num = rand(100)

#     # Return random letter and number combo
#     @call = "#{@letter}#{@num}!"
#   end

#   # Check row at column_num (index) to see if number matches
#   # If it matches, replace with "X"
#   def column_check
#     @bingo_board.each {|row|
#       if row[@column_num] == @num
#         row[@column_num] = "X"
#       end
#     }
#   end

#   # Prettify board display
#   # Print each ROW followed by a new line
#   # Within each ROW, print each element followed by a space
#   def display_board
#     puts "B  I  N  G  O"
#     puts "-------------"
#     @bingo_board.each { |row|
#       row.each {|num|
#         print "#{num} "
#       }
#       puts
#     }
#   end
# end #end class


# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def call
    @column_num = rand(0..4)
    @letter = ["B", "I", "N", "G", "O"][@column_num]
    @num = rand(100)
    @call = "#{@letter}#{@num}!"
  end

  def column_check
    @bingo_board.each {|row|
      row[@column_num] = "X" if row[@column_num] == @num
    }
  end

  def display_board
    puts "B  I  N  G  O"
    puts "-------------"
    @bingo_board.each { |row|
      row.each {|num|
        print "#{num} "
      }
      puts
    }
  end
end #end class


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

5.times do
  p new_game.call
  new_game.column_check
  new_game.display_board
end

=begin
Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
- Pseudocoding wasn't difficult. I used a different style than I normally would. I tried to follow
the "outline" approach that was included in the template. It's more "descriptive" than my normal
style, but less exact as far as being able translate directly into code

What are the benefits of using a class for this challenge?
- I can pass the values of the instance variables between the different methods
of the class and they retain their value for as long as the "instance" lives. So for example,
I can call the #call method and each time have a different result. Once a column/row intersection has been "marked"
on the board it's saved between calls so that I can display ALL called numbers that matched, not just the most recent one.

How can you access coordinates in a nested array?
- You can use the Array[index][sub-index] syntax or you can do an inner loop nested inside an outer loop
  to iterate through both arrays.

What methods did you use to access and modify the array?
- I used #each, and replaced the value at row[column_num] with an "X" if it matched num.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
- I used #times for the first time. It tells a loop how many times to execute.

How did you determine what should be an instance variable versus a local variable?
- I used local variables in the loops and made all others instance variables. I could have
changed a few others like @call to a local variable, since instance variables are only needed
if you want to pass them between methods in the class.

What do you feel is most improved in your refactored solution?
- The readability of the loop in my column_check method.
=end