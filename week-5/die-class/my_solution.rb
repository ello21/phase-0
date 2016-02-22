# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [0.5] hours on this challenge.

# 0. Pseudocode

# Input:
# Integer representing number of sides

# Output:
# Die.sides returns number of sides.
# Die.roll returns random number between 1 and 6.

# Steps:
# Initialize method: Pass sides argument to "sides" class instance variable
# Sides method: Return "sides" instance variable
# Roll method: Return random number between 1 and "sides" (inclusive)

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Number of sides must be greater than 1")
  	end
  end

  def sides
  	p @sides
  end

  def roll
	p rand(1..@sides)
  end
end

#Test
die = Die.new(8)
die.sides
die.roll


=begin
3. Refactored Solution: N/A

4. Reflection

What is an ArgumentError and why would you use one?
- It indicates that the wrong number of arguments has been passed to a method.
You would use one when defining the initialization method for a Class that needs
to have a specific number of arguments.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
- I defined an initialization method for the first time and created an ArgumentError. No issues.

What is a Ruby class?
- An Object that can be given behavior (methods) and data (variables). Classes can inherit from their
parent and share methods. We can also create "instances" of each class, with its own data.

Why would you use a Ruby class?
- If Objects will have similar behavior, but possibly different data, you can create a Class and
pass methods to each "instance" of that class, without having to define them each time.

What is the difference between a local variable and an instance variable?
- A local variable's scope is the method it was initialized in. An instance variable's scope is it's class.

Where can an instance variable be used?
- It can be used in every instance of that Class.

=end