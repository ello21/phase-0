# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# Initial
# def largest_integer(list_of_nums)
#   if list_of_nums==[]
#   		nil
#   	else
#   		largest=list_of_nums[0]
#   		for x in list_of_nums do
#   			if x > largest
#   				largest = x
#   			end
#     	end
#     	largest
#    	end
# end

#Refactor
def largest_integer(list_of_nums)
	if list_of_nums==[]
  		nil
   	else
		p list_of_nums.sort!.last

	end
end
