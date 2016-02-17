# Calculate the mode Pairing Challenge

# I worked on this challenge with Juli G.

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# An array of values
#
# What is the output? (i.e. What should the code return?)
# An array that contains the value(s) which occurs the most times in the array. If multiple
# values occur an equal number of times, it will return an array with all those values.
#
# What are the steps needed to solve the problem?
=begin
Define mode method:

CREATE an array to hold the mode
CREATE variable to hold number of times object appears
FOR each object in the array, count how many times
it appears in the array
STORE the count
COMPARE the count to the count of other objects in array
  IF the count > previous count
  THEN mode = count
  ELSE IF the count == previous count
  THEN add the value to the mode array
RETURN the mode array

=end
# 1. Initial Solution

def mode(obj_array)
  count = 0
  mode_array = []
  mode_count = 0

  i=0
  obj_array.each {
       count = obj_array.count(obj_array[i])

  if count > mode_count
    mode_count = count
    mode_array = [ obj_array[i] ]
  elsif count == mode_count
    mode_array << obj_array[i]
  end
     i += 1
  }
  p mode_array.uniq
end

mode([4, 2, 9, 2, 5, 3, 5, 2, 5])
mode(["one", "two", "three", "two", "one"])

# 3. Refactored Solution

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
- We used arrays. We spent a while trying to refactor and discussed the logic of using a hash, but any ideas
we came up with seemed more complex than our initial solution. I'm sure there's a good solution with a hash,
however my pair and I didn't come up with one during the time we set. We were both on board with how to approach
the problem using an array and happy with our solution. I'm interested to see how other people did it.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
- Yes. The pseudocode we used today translated easily into code. We described the variables we would need,
what would need to be compared, and what we would need to return.

What issues/successes did you run into when translating your pseudocode to code?
- We originally wrote "THEN add the count to the mode array". When we coded it we knew it wasn't right.
What we intended to do was add the VALUE to the mode array. We changed the pseudocode to reflect that.
We referred back to our pseudocode often, and when we got stuck, it really helped us to talk out what steps
to take next.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring?
Were they difficult to implement?
- We used the "each" method to loop through the array. I think this is the first time I've written this many
steps inside an "each" loop. Previously, I would have done maybe one step in "each" and then used a "while"
or "until" loop for the rest, but while we were testing our code it made sense to do it this way.
It's a good sign that I'm getting more comfortable with "each".

A new method for both my pair and I is "uniq". Once we found which value was the mode and stored it in an array,
we wanted to remove duplicate occurences of the values. I knew I had seen an array method to do this, but wasn't
certain about which to use. I pulled up the ruby docs for Array, searched for "duplicate" and saw that "uniq" was
perfect.

=end