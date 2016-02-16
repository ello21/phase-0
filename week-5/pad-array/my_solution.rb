
# Pad an Array

# I worked on this challenge with: Emily O.

# I spent 0.75 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
	# An array, an integer to hold the minimum size, and an optional pad value
# What is the output? (i.e. What should the code return?)
	# The original or the array with pad value inserted
# What are the steps needed to solve the problem?
	# WHILE array length is < minimum size
	#   add pad value to array
	# END WHILE
	# RETURN array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
      array.push(value)
  end
  p array
end

# def pad(array, min_size, value = nil) #non-destructive
#   pad_array = []
#   array.each {|x| pad_array.push(x)}
#   while pad_array.length < min_size
#       pad_array.push(value)
#   end
#   p pad_array
#  end


# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
    pad_array = Array.new(array)
  while pad_array.length < min_size
      pad_array.push(value)
  end
  p pad_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# 	Yes, our pseudocode translated smoothly into ruby syntax.

# Once you had written your pseudocode, were you able to easily translate it into code?
# What difficulties and successes did you have?
# 	Since we approached the problem with a while loop in mind, we were successful
# 	in getting our pseudocode as close to code as possible, while still being
# 	language-independent. It was very easy to translate.

# Was your initial solution successful at passing the tests? If so, why do you think that is?
# If not, what were the errors you encountered and what did you do to resolve them?
# 	Our destructive method passed the tests on the first run. In our non-destructive
# 	method, we originally used "pad_array = array" to copy "array" into "pad_array",
# 	however, we realized that this would cause "array" to be manipulated as well.
# 	We decided to use a loop to copy all elements of "array" into "pad_array".

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# 	Yes, when we refactored, we used the Array method "Array.new" to duplicate "array"
# 	and save it in the "pad_array" variable.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# 	Our solution is very readable, and reads like English for the most part, which is
# 	part of the fun of using Ruby. We could have chosen a more descriptive name
# 	for "array". We discussed this and won't do that in the future.

# What is the difference between destructive and non-destructive methods in your own words?
# 	Destructive methods manipulate the input that they're given and overwrite the input
# 	with the result of the calculation or tests that take place in the body of the method.
# 	Non-destructive methods create a new variable or container to hold the result of the
# 	body execution, which will allow the original input to remain unchanged, and available
# 	to be used again later in the program.
