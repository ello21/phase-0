
=begin

Input:
Die.new: Array of Strings, representing labels on sides of dice

Output:
Die.new: New instance of Die class OR Argument Error
Die#sides: Integer, representing number of sides on the dice
Die#roll:  String, random selection from Array

Steps:
DEFINE "Die-2" class
	DEFINE "sides" as attribute writer method
	END

	DEFINE "initialization" method, takes "side names" Array as argument
		IF length of "side names" Array < 1
		THEN raise Argument Error
		ELSE
			SET "side names" instance variable equal to "side names" argument
			SET "sides" instance variable equal to length of "sides_names" Array
		END
	END

	DEFINE "roll" method
		SET "roll" instance variable equal to random number between 1 and value of "sides"
		RETURN Array value at index, where index is equal to ("roll" - 1)
	END
END class
=end


# 1. Initial Solution
class Die_2
	attr_writer :sides

	def initialization(side_names)
		if side_names < 1
			raise ArgumentError.new("Number of sides must be greater than 1")
		else
		@side_names = side_names
		@sides = side_names.length
		end
	end

	def roll

	end
end