=begin
Create Accountability Groups
Erica Lloyd
2/21/16
Time Spent: 4 hours

PSEUDOCODE:
Input:
Comma separated Strings which represent a list of names

Output:
A "Groups" Hash where each key is a "Group Number"
and each value is an Array of Strings representing the
group members' names

Steps:
IF "list" IS NOT an Array
	THEN convert "list" to Array
ELSE
	COUNT length of "list" Array
	****CASE 1: "list" Array length < 10 ******
	CASE 2: "list" Array length divided by 5 has remainder 0
		SPLIT "list" Array into sub-Arrays after every 5 Strings
	CASE 3: "list" Array length divided by 5 has remainder 1
		SPLIT last sub-Array after index2 [3 Strings, 2 Strings]
		APPEND remaining String onto last sub-Array [3 Strings, 3 Strings]
	CASE 4: "list" Array length divided by 5 has remainder 2
		SPLIT last sub-Array after index2 [3 Strings, 2 Strings]
		APPEND remaining String onto last sub-Array [3 Strings, 4 Strings]
	CASE 5: "list" Array length divided by 5 has remainder 3 OR 4
		CREATE new sub-Array at last index of "list" Array

list = [ sub0[a,b,c,d,e],sub1[a,b,c,d,e],sub2[a,b,c]]

CREATE new empty "Groups" Hash
INITIALIZE loop counter (i) to 1
FOR EACH element (sub-Array) in "list" Array
	ADD loop counter as key ("Group i")
	ADD a sub-Array as value
	INCREMENT loop counter

PRINT AND RETURN all "Group" Hashes with new line after each

=end

# RELEASE 1: Initial Solution

rock_doves = 'Adam Pinsky',
'Afaan Naqvi',
'Alana Farkas',
'Andrew Crowley',
'Andrew Vathanakamsang',
'Anna Lansfjord',
'Benjamin Heidebrink',
'Blair White',
'Brad Lindgren',
'Brian Donahue',
'Brian Mosley',
'Brittney Braxton',
'Camila Crawford',
'Charlie Lee',
'Chunyu Ou',
'Daniel Homer',
'Daniel Shapiro',
'Dave Hostios',
'David Kaiser',
'David Ramirez',
'Emily Osowski',
'Emmet Garber',
'Eric Gumerlock',
'Erica Lloyd',
'Greg Toprak',
'Hanna Taylor',
'Jack Baginski',
'Jaclyn Feminella',
'Jasmeet Chatrath',
'Jason Allen',
'Jon Norstrom',
'jonathan nicolas',
'Joseph Yoo',
'Joshua Lugo',
'Joshua Wu',
'Julia Giraldi',
'Kari Giberson',
'Katherine Broner',
'Kevin Fowle',
'Kevin Niu',
'Kevin Perkins',
'Leo Kukhar',
'Li-Lian Ku',
'Marita Deery',
'Michael Verthein',
'Milorad Felbapov',
'Nick Russo',
'Noah Schutte',
'Oscar Delgadillo',
'Ryan Dempsey',
'Ryan W.',
'Sami Zhang',
'Saralis Rivera',
'Sean Norton',
'Shyh Hwang',
'Sydney Rossman-Reich',
'Theo Paul',
'Tomasz Sok',
'Wesley El-Amin'


def create_acct_groups(list)

	if !(list.is_a?(Array))
		list = list.to_a
	end

	sub_list = list.each_slice(5).to_a

	if (sub_list.last.length) < 3
		sub_list[-2] << sub_list.pop
		sub_list.last.flatten!
		split_group = sub_list.pop.each_slice(3).to_a
			split_group.each { |sub|
			sub_list << sub
		}
	end

	groups = {}

	i=1
	sub_list.each { |names|
		groups["Group #{i}"] = names
		i+=1
	}

	groups
end

# Test and prettify output
rock_groups = create_acct_groups(rock_doves)
puts "#{rock_doves.length} Students"
puts "#{rock_groups.length} Groups"
puts
rock_groups.each {|group|
	puts group
	puts
}



=begin

REFLECTION:
What was the most interesting and most difficult part of this challenge?
- I enjoyed and was challenged by trying to think of the best data structure to hold
the groups. I went back and forth between Arrays and Hashes, and finally came up with
a combo of both!

Do you feel you are improving in your ability to write pseudocode and break the problem down?
- Yes, I think my pseudocode is well-written, however, I pretty much abandoned parts of it when I realized
it wasn't necessary. For example, I didn't need the case switch b/c the Array#slice method automatically
puts the remainder (after the slice) in it's own array. I didn't need a separate case for each possible remainder.

Was your approach for automating this task a good solution? What could have made it even better?
- My approach was as good as it could be with the knowledge I have today! I think there's a better way to
get the sub-sub-Arrays into the containing list without so much popping and appending.

What data structure did you decide to store the accountability groups in and why?
- I chose a Hash because I wanted to be able to reference the group Array by names such as "Group 1"

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
- I kind of refactored while coding the first time. When I realized my initial plan wasn't working (and I was
spending too much time trying to make it work) I found some better methods such as #each_slice and #flatten.

=end