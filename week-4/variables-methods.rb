# Release 2
# Full name greeting
puts "Hi, what's your first name?"
first_name = gets.chomp
puts "Cool. Middle name?"
mid_name = gets.chomp
puts "Aaaand, your last name?"
last_name = gets.chomp
puts "Awesome! Hey "+first_name+" "+mid_name+" "+last_name+"! Great to meet you!"

# Bigger, better favorite number
puts "What's your favorite number?"
favNum = gets.chomp
betterNum = ((favNum.to_i) + 1)
puts "This number is bigger and better: "+betterNum.to_s

# Define-method
# https://github.com/ello21/phase-0/blob/master/week-4/define-method/my_solution.rb


# Release 4
# Address
# https://github.com/ello21/phase-0/blob/master/week-4/math/my_solution.rb

# Math
# https://github.com/ello21/phase-0/blob/master/week-4/address/my_solution.rb


# Release 6
# How do you define a local variable?
	# You write the variable's name followed by an equal sign and
	# then the value you want to assign it
	# Ex: myVariable = "value"

# How do you define a method?
	# def methodName (param1, param2)
	# 	p "Do this"
	# end
	# Use the keyword "def" to begin the method, followed by the method's name.
	# If there are parameters, place those in parentheses next to the method
	# name. On the next line put the method's body. End the method with
	# keyword "end".

# What is the difference between a local variable and a method?
	# A local variable store a value. A method stores a set of commands.

# How do you run a ruby program from the command line?
	# ruby file-name.rb

# How do you run an RSpec file from the command line?
	# rspec rspec-file-name.rb

# What was confusing about this material? What made sense?
	# At one point I had a variable with a number value in it and when I
	# tried to use "puts" for the variable it gave an error. I changed
	# the command to "p" and the variable was outputted as a number, instead
	# of a string. It made sense and I'll remember that the "p" command
	# can output a number, but "puts" cannot. With "puts" ruby will output
	# a string.


