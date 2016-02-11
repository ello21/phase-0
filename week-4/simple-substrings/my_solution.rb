# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

def welcome(addr)
	cali=false
	arr=addr.split("")

	arr.each_index { |i|
		if arr[i] =="C"
			if arr[i+1] =="A"
				cali=true
			end
		end
	}

 	if cali
 		p "Welcome to California"
 	else p "You should move to California"
	end
 end

# puts "T:"
# welcome("CA")
# welcome("CAli")
# welcome("dsjflkaAdsjCA")
# welcome("dsjfl CA kaAdsjCA")

# puts "F:"
# welcome("452 this ca")
# welcome("452 this c")
# welcome("dsjflkaAdsjCddjjA")