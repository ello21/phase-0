# Good Guess

# I worked on this challenge by myself.


# Your Solution Below

#leap years
def leap_year?(int)
	if ((int%4==0) && int%100!=0) || (int%400==0)
		true
	else false
	end
end

# leap_year?(2500)
# leap_year?(0)
# leap_year?(1999)
# puts
# leap_year?(4)
# leap_year?(400)
# leap_year?(2000)
# leap_year?(2400)