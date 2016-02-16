# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
	# A positive integer
# What is the output? (i.e. What should the code return?)
	# If the input is longer than 4 digits, the output should be
	# a positive integer with a comma after every 3 digits from right to left
	# If less than 4 digits, output should equal input
# What are the steps needed to solve the problem?
	# Add digits to array1
	# 	Convert int to string, then string to array
	#
	# Test whether input is more or less than 4 digits
	# 	IF input < 4 digits, THEN
	# 		RETURN input
	# 	ELSE
	# 		Create array2 to hold new number with commas
	# 		Create loop counter to keep track of iterations
	# 		UNTIL the first array index is reached
	# 			Starting from last array index, EXTRACT each array element into array 2
	# 			Before every 4th element, insert comma
	# 			IF loop counter divisible by 4, THEN
	# 				insert comma
	# 		END UNTIL
	# 	END IF
	# RETURN array

# 1. Initial Solution

def separate_comma (int)
	int_string=int.to_s
	int_array=[]

	i=0
	until i==(int_string.length)
		int_array.push(int_string[i])
		i+=1
	end

	if int_array.length < 4
		p int_array.join
	else
		comma_array=[]

		t=1
		until int_array.length==0

			if t%4==0
				comma_array.push(",")
				t+=1
			else
				comma_array.push(int_array.pop)
				t+=1
			end
		end
		p comma_array.join.reverse
	end
end


# 2. Refactored Solution - In Progress, Not Working

# def separate_comma(int)
# 	int_string=int.to_s

# 	if int_string.length < 4
# 		p int_string
# 	else
# 		int_string.gsub!(/(\d{3})/, ',\1')
# 		p int_string
# 	end
# end

# separate_comma(1987)

# 3. Reflection