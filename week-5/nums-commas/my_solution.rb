# Numbers to Commas Solo Challenge

# I spent [3.5] hours on this challenge.

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

=begin
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
=end


# 2. Refactored Solution
def separate_comma (int)
	int_string=int.to_s
	int_array=[]

	if int_string.length < 4
		p int_string
	else
		comma_string = int_string.reverse.gsub!(/.../) {|xyz| xyz + ","}
		if comma_string.end_with?(",")
			comma_string.chomp!(",")
		end
		p comma_string.reverse
	end
end

separate_comma(111222333)

=begin
# 3. Reflection

What was your process for breaking the problem down? What different approaches did you consider?

- I tried to think of a mathematical way to say "After every 3 indexes, insert a comma", keeping
in mind that the first comma would be an exception, as it comes after the first index. I thought
I'd be able to use String#insert but that method takes a specific index number, and trying to come
up with a way to specify "every 3rd index" didn't work out. I knew I could match the pattern
of "every 3 characters" with regular expressions but still had to deal with the first character
exception. I realized that there should be a comma after every 3 characters from the LAST number
and that's when I decided to reverse the string and start from the back.

Was your pseudocode effective in helping you build a successful initial solution?

- Yes, the pseudocode is a "map" that I was able to follow when writing out the code. It helped
me to make sure I met each condition I had written. It didn't tell me HOW to do it though. I
still had to spend a good amount of time researching how to accomplish the steps I wrote out.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using
the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change
the way your code works? If so, how?

- I initially wanted to refactor using #scan but couldn't store the result. I left the challenge alone
for a few days and when I returned to it I had some new ideas. I used #reverse, #gsub, #end_with, and #chomp.
Before finding #end_with, my test failed for numbers that were multiple of 3 digits long, because it would
add the comma again after the last digit. I needed to test whether the last character was a comma and remove
it. Using these methods definitely changed the way my code works...no need to convert the string to an array
or push and pop elements.

How did you initially iterate through the data structure?

- I initially converted the string to an array and popped elements off one at a time into a new array,
inserting a comma after every 4th element (to account for the comma). It worked, but I knew it could be
done in a better way.

Do you feel your refactored solution is more readable than your initial solution? Why?

- Definitely. Using the built-in methods makes it easy to see what actions are being executed, ex: "reverse,
substitute, chomp" etc, whereas without them, you have to step trace the code and loops to infer what
the result will be.

=end