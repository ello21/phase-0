# Build a simple guessing game

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output:
	# #solved: Boolean true OR false
	# #guess:  Symbol (:low, :high, OR :correct)
# Steps:
=begin
DEFINE class
  DEFINE "initialize" method, accepts "answer" Integer
    IF "answer" is not an Integer
	  Print error stating "Answer must be an Integer"
	ELSE
	  SET instance variable "answer" equal to "answer"
	END
  END

  DEFINE "guess" method, accepts "guess" integer
  IF "guess" is not an Integer
    Print error stating "Your guess must be an Integer"
  ELSE
    SET instance variable "guess" equal to "guess"
    CREATE instance var "last guess"
    IF instance var "guess" > instance var "answer"
      SET "last guess" equal to "high" Symbol
    ELSIF instance var "guess" < instance var "answer"
      SET "last guess" equal to "low" Symbol
    ELSIF instance var "guess" equal to instance var "answer"
      SET "last guess" equal to "correct" Symbol
    END
    RETURN "last guess"
  END

  DEFINE "solved" method
    IF "last guess" equal to "correct" Symbol
      RETURN true
    ELSE
      RETURN false
  END
END
=end

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     if answer.is_a?(Integer) == false
#       raise ArgumentError.new("Answer must be an Integer")
#     else
#       @answer = answer
#     end
#   end

#   def guess (guess)
#     if guess.is_a?(Integer) == false
#       raise ArgumentError.new("Your guess must be an Integer")
#     else
#       @guess = guess
#       @last_guess = nil

#       if @guess > @answer
#       	@last_guess = :high
#       elsif @guess < @answer
#       	@last_guess = :low
#       elsif @guess == @answer
#       	@last_guess = :correct
#       end
#     end
#     return @last_guess
#   end

#   def solved?
#     if @last_guess == :correct
#     	true
#     else
#     	false
#     end
#   end
# end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    if answer.is_a?(Integer) == false
      raise ArgumentError.new("Answer must be an Integer")
    else
      @answer = answer
    end
  end

  def guess (guess)
    if guess.is_a?(Integer) == false
      raise ArgumentError.new("Your guess must be an Integer")
    else
      @guess = guess
      @last_guess = nil

      if @guess > @answer
      	@last_guess = :high
      elsif @guess < @answer
      	@last_guess = :low
      elsif @guess == @answer
      	@last_guess = :correct
      end
    end
    return @last_guess
  end

  def solved?
    unless @last_guess == :correct
      false
    else
      true
    end
  end
end

# Test
game = GuessingGame.new(29)
# p game.guess(29.1)
# p game.solved?
# p game.guess("twenty")
# p game.solved?
p game.guess(20)
p game.solved?
p game.guess(30)
p game.solved?
p game.guess(29)
p game.solved?



# Reflection
=begin
How do instance variables and methods represent
the characteristics and behaviors (actions) of a real-world object?
- Instance variables and methods can inherit behavior and pass messages
to each other just like real-world objects.

When should you use instance variables? What do they do for you?
- Use them inside classes so that each instance of the class will also
be able to access it. They allow you to use and manipulate the variable throughout
the class.

Explain how to use flow control. Did you have any trouble using it in this challenge?
If so, what did you struggle with?
- Flow control allows your program to have "branches". If one set of conditions is met,
the program branches in that direction, if another set of conditions is met it branches another
way. I didn't have any issues with using if/else statements. I refactored using unless
just because it seemed to be more readable in that case.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
- One reason for using the symbols :low,:high, and :correct is that they won't be changed accidentally
during program execution. Using :correct instead of "correct" also allows us to test whether
last_guess is equal to :correct. If we had used "correct" they would never be equal, because each String
instance of "correct" is actually a different object, with a unique object id.
=end