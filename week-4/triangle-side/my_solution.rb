# I worked on this challenge with: Ryan Wilkins.


# Your Solution Below


def valid_triangle?(a, b, c)

	if (a==0||b==0||c==0) # no sides == 0
		p false
	elsif (a==b && b==c) #equilateral
		p true
	elsif
		c**2==(a**2)+(b**2) || a**2==(b**2)+(c**2) || b**2==(a**2)+(c**2) #right tri
		p true
	elsif ((a==b) && ((a+b) > c)|| (b==c) && ((b+c) > a)|| (a==c) && ((a+c) > b)) #isos
		p true
	else
		p false
	end
end

