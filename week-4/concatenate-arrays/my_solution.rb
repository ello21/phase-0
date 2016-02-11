# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

# Initial
# def array_concat(array_1, array_2)
# 	array_2.each do |x|
# 		array_1.push(x)
# 	end
# 	p array_1
# end

#Refactor
def array_concat(array_1, array_2)
	array_1 += array_2
	p array_1
end

array_concat([1,3,5],[7,8,9])