# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [1)split the string of items into an array 2) loop the array into the hash]
  # set default quantity to hash value
  # print the list to the console [can you use one of your other methods here?]
# output: [A hash where the key is an item and the value is a quantity]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item to hash as new key
#        add quantity to hash a new value
#        return confirmation
# output: confirmation of what was added, item & quantity

# Method to remove an item from the list
# input: Argument to id which item is to be removed
# steps: Delete item from the hash
# output: The item from the hash is removed
#         confirmation of removal

# Method to update the quantity of an item
# input: item and new quantity
# steps: Find item in hash and update the quantity value
# output: Confirmation of item and its new quantity

# Method to print a list and make it look pretty
# input: List name
# steps: Grab key and value and print them in orderly fashion
# output: The method should show the list of items and quantity

def create_list(list)
  list_arr=list.split(" ")
  # p list_arr
  list_hash ={}
  list_arr.each do |item|
    # p item
    list_hash[item] = 1
  end
  p list_hash
end

items = "carrots apples cereal pizza"
list = create_list(items)

def add_item(list_hash, new_item,quantity = 1)
  list_hash[new_item]=quantity

  puts "#{quantity} #{new_item} have been added"
end

add_item(list, "Pears", 3)
p list

def remove_item (list_hash, item)
  list_hash.delete("item")
  puts "#{item} have been removed"
end

remove_item(list, "apples")

def update_item(list_hash, item, quantity)
  list_hash[item]=quantity

  puts "new quantity of #{item} is #{quantity}"
end

update_item(list, "pizza", 4)

def print_list (list_hash)
  list_hash.each do |item, quantity|
    puts "Buy #{quantity} of #{item}"
  end
end

print_list(list)


# Reflection

# What did you learn about pseudocode from working on this challenge?
#   I learned that writing pseudocode that can be easily implemented can be time-consuming.
#   If we had more time, we would have made our pseudocode more detailed
#   and closer to code. But for the sake of time, we tried to hit on the major points.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
#   Using an array would have allowed for simple access to any sub-arrays. For example
#   if we had made the list array contain an array [item,quantity] at each index, we could
#   have accessed the sub-index pretty easily. The hash was a simple way to show the
#   relationship between the item and quantity, so that's why we went with it.

# What does a method return?
#   A method returns the last expression executed in the body

# What kind of things can you pass into methods as arguments?
#   You can pass ints, floats, strings, classes, arrays, hashes.

# How can you pass information between methods?
#   By saving the return value from one method into a variable (outside the method),
#   and then passing that variable into another method. As long as the variable is defined
#   outside of both the methods, it can be accessed by both of them by passing it in as
#   an argument.

# What concepts were solidified in this challenge, and what concepts are still confusing?
#   Definitely solidified saving return values into variables and passing them between
#   methods. Also got some good practice iterating over a hash.
