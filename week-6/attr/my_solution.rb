#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = "Erica"
	end

end

class Greetings
	def initialize
		@name_instance = NameData.new
	end

	def hello
		puts "Hey #{@name_instance.name}! What's good?"
	end
end

#Test
greet = Greetings.new
greet.hello



=begin
Reflection

RELEASE 1
What are these methods doing?
- Initializing the age, name, and occupation. Then returning them (reading), then changing them (writing).

How are they modifying or returning the value of instance variables?
- The #change_my methods pass in the new value in an argument, and assign it to an instance variable.
- The #what_is methods simply return the instance variable value

RELEASE 2
What changed between the last release and this release?
- The #what_is_age method has been simplified into an attribute reader method.

What was replaced?
- The #what_is_age method was replaced by attr_reader :age

Is this code simpler than the last?
- Yep, you know that the instance variable age can be read by
calling instance.age

RELEASE 3
What changed between the last release and this release?
- The #change_my_age method is no longer used

What was replaced?
- #change_my_age is replaced by attr_writer : age

Is this code simpler than the last?
Yes

#RELEASE 5
What is a reader method?
- A method that returns the value of an instance variable

What is a writer method?
- A method that can change the value of an instance variable

What do the attr methods do for you?
- Removes the need to define methods just to read/write an instance variable.
Using one line all of this can be done.

Should you always use an accessor to cover your bases? Why or why not?
- No, there are times when other classes and methods should not have access
to an instance variable's value. You'd want to keep it as a reader so that they
can access the value, but not change it.

What is confusing to you about these methods?
- In a previous challenge, I was confused about being able to call the method
used in an attribute. I wasn't sure if I could call something like
"NameData.name". But now I know I can.
=end