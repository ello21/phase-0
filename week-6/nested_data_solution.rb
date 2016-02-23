# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]



# attempts:
# ============================================================
#p array [4][1]
#p array [3][1]
#p array [1][1][1]
#p array [1][2][1]
p array[1][1][2][0]
# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data [:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! { |element|
  if element.is_a?(Array)
    element.map! {|sub_element| sub_element += 5}
  else
    element+=5
  end
}

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
#   startup_names.map! {|level_1|
#     if level_1.is_a?(Array)
#         level_1.map! {|level_2|
#         if level_2.is_a?(Array)
#           level_2.map!{|level_3| level_3 << "ly"}
#         else level_2 << "ly"
#         end
#        }
#     else level_1 << "ly"
#     end

#     }

# p startup_names

#Refactor
startup_names.map! {|element|
  unless element.is_a?(Array)
    element << "ly"
  else element.map!{|sub_element|
      unless sub_element.is_a?(Array)
        sub_element << "ly"
      else sub_element.map!{|sub_sub| sub_sub << "ly"}
      end
  }
  end
}

p startup_names

=begin REFLECTION

What are some general rules you can apply to nested arrays?
- For nested arrays we need to test to see what type of Object is located an index and then
make sure we're using the appropriate method for that data type. This is especially important
when using Strings in a nested Array b/c methods like #append << and #concat work for both
Strings and Arrays, so you won't necessarily get an error if you use it while iterating.
For example, you could intend to add "ly" to the end of each String, but if the Object at an
index is actually an Array it will still work, and will append "ly" as the last element of the Array,
rather than appending to each sub-element INSIDE that array.

What are some ways you can iterate over nested arrays?
- We can use nested loops! By doing a conditional test to determine whether the element is a sub-Array
we then tell the program to loop over that sub-Array, instead of trying to manipulate as a single element.
Basically, for every Array do a loop through that Array.

Did you find any good new methods to implement or did you re-use one you were already familiar with?
What was it and why did you decide that was a good option?
- We used methods we had previously used but we hadn't nested them before, for example: Array#map!
It was a good option because it allowed us to change the elements inside the Array and overwrite the original
data (destructive).

=end