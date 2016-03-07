# OO Basics: Student


# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
# CREATE 5 Student Objects
# INSERT each Student Object into a students Array
# 	Each Object has first_name(String) and scores (array) attributes
# CALCULATE average scores for each student
# ASSIGN letter grade based on average score

# students = [ {first_name, scores[1,2,3,4,5]}, {}, {}, {}, {} ]


# Initial Solution
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
  	@first_name = first_name
  	@scores = Array.new(scores);
  end

  def average
  	@avg = (@scores.inject(0){|sum, x| sum + x})/@scores.length
  end

  def letter_grade
  	if @avg >= 90
  		"A"
  	elsif @avg >= 80
  		"B"
  	elsif @avg >= 70
  		"C"
  	elsif @avg >= 60
  		"D"
  	else
  		"F"
  	end
  end
end

student1 = Student.new("Alex", [100, 100, 100, 0, 100])
student2 = Student.new("Tim", [100, 100, 100, 0, 100])
student3 = Student.new("Adele", [90, 50, 10, 0, 20])
student4 = Student.new("Frank", [50, 60, 60, 0, 100])
student5 = Student.new("Logo", [0, 10, 20, 30, 40])

students = [student1, student2, student3, student4, student5]

def linear_search(array, first_name)
	position = -1
	array.each_with_index { |object, index|
		if object.first_name == first_name
			position = index
		end
	}
	position
end

sorted_students = students.sort {|a, b| a.first_name <=> b.first_name}

def binary_search(array, first_name, first_index, last_index)
	if (first_index > last_index)
		return position = -1
	else
		mid = ((first_index + last_index)/2).floor
		name_at_mid = array[mid].first_name
		# base case
		if first_name == name_at_mid
			position = mid
			return position
		# repeat and decrement down to base case
		else
			if (name_at_mid > first_name)
				binary_search(array, first_name, first_index, mid-1)
			end
			if (name_at_mid < first_name)
				binary_search(array, first_name, mid+1, last_index)
			end
		end
	end
end

# Refactored Solution



# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1


# p sorted_students
p binary_search(sorted_students, "Logo", 0, 4)



=begin
# Reflection

What concepts did you review or learn in this challenge?
- Learned how to translate the binary search algorithm into Ruby.
I hadn't worked with this algorithm in years, felt good to re-learn it
and apply it in Ruby.

What is still confusing to you about Ruby?
- I'm not confused about anything, but need to learn more built-in methods
and be able to recall them without looking them up.

What are you going to study to get more prepared for Phase 1?
- I'm going to continue practicing with Ruby, Javascript and doing
coding challenges on sites like Coderbyte.

=end