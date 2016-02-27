

# Die Class 2: Arbitrary Symbols
# Erica Lloyd

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# 	Die.new: Array of Strings, representing labels on sides of dice

# Output:
# 	Die.new: New instance of Die class OR Argument Error
#	Die#sides: Integer, representing number of sides on the dice
#	Die#roll:  String, random selection from Array

# Steps:

# DEFINE "Die" class
# 	DEFINE "initialize" method, takes "side labels" Array as argument
# 		IF "side labels" Array is empty
# 		THEN RETURN Argument Error
# 		ELSE
# 			SET "side labels" instance variable equal to "side labels" argument
# 		END
# 	END

# 	DEFINE "sides" method
# 		SET "sides" instance variable equal to length of "side labels" Array
# 		PRINT and RETURN value of "sides"
# 	END

# 	DEFINE "roll" method
# 		SET "roll" instance variable equal to random number between 1 and value of "sides"
# 		RETURN Array value at index, where index is equal to ("roll" - 1)
# 	END
# END class



# 1. Initial Solution
# class Die
# 	def initialize(labels)
# 		if labels == []
# 			raise ArgumentError.new("Number of sides must be greater than 1")
# 		else
# 		@labels = labels
# 		end
# 	end

# 	def sides
# 		@sides = @labels.length
# 		p @sides
# 	end

# 	def roll
# 		random_num = rand(1..@sides)
# 		@labels[(random_num-1)]
# 	end
# end


# Refactored Solution
class Die
	def initialize(labels)
		if labels == []
			raise ArgumentError.new("Number of sides must be greater than 1")
		else
			@labels = Array.new(labels)
		end
	end

	def sides
		@sides = @labels.length
		p @sides
	end

	def roll
		roll = @labels[rand(@sides)]
		p roll
	end
end

#Test
die = Die.new(["A", "B","C", "D","E", "F"])
die.sides
die.roll

# Reflection

# What were the main differences between this die class and the last
# one you created in terms of implementation? Did you need to change much
# logic to get this to work?
# Main difference was that the #sides method was not set during initialization. Instead,
# an Array containing the labels is passed in, and the number of sides is derived from
# the length of that Array

# What does this exercise teach you about making code that is easily changeable or modifiable?
# By using classes we can easily change the behavior or data returned by an instance of Die without
# having to change very much code. We simply change the code inside the class and then every
# instance of that class will behave differently.

# What new methods did you learn when working on this challenge, if any?
# I didn't use any new methods

# What concepts about classes were you able to solidify in this challenge?
# I have a better understanding of when to use the "attr_" shortcut. I thought I'd
# be able to move the statement "@sides = @labels.length" to the initialize
# method, and then use "attr_reader :sides", but since we actually need to be able
# to call the method die.sides, we have to have a defined method, instead of using
# that shortcut.
