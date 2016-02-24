# Your Names
# 1) Erica Lloyd
# 2) Jason Allen

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator:

# Defines a method that receives two arguments, item_to_make and num_of_ingredients
def serving_size_calc(item_to_make, num_of_ingredients)
# Establishes a Hash for the items to make, and the corresponding ingredient use
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
# Establishes an decremental error counter
  error_counter = 3

  #Iterate through the library to see if any key
  # matches item_to_make
  library.each do |food|
    #if key/value pair is not equal to item_to_make
    #then decrement error_counter
    # p library[food]
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  #if error_counter has not reached 0 then
  # raise error that item_to_make is not in
  #the library
  if error_counter > 0
  end

  #Assign num_of_ingredients to serving_size
  serving_size = library.values_at(item_to_make)[0]
  #Assign remainder to remaining_ingredients
  remaining_ingredients = num_of_ingredients % serving_size

  # when remaining_ingredients = 0
  #  returns a calculation of num_of_ingredients
  #  divided by serving size
  #else
  #  returns a calculation of num_of_ingredients
  #  divided by serving size out of total
  #  item_to_make and provide total of remaining_ingredients
 case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end

end


# Refactor
def recipe_batch_calc(food, num_of_ingredients)
  recipe = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if recipe.has_key?(food) == false
    raise ArgumentError.new("#{recipe} is not a valid input")
  end

  num_batches = recipe[food]
  remaining_ingredients = num_of_ingredients % num_batches

  output =  "Calculations complete: Make #{num_of_ingredients /   num_batches} of #{food}"
  remaining_output = ", you have #{remaining_ingredients} leftover ingredients."
  # Suggested baking items: TODO: MAKE THIS FEATURE"

  if  num_of_ingredients < recipe[food]
      puts "Go to the grocery store!"
        if remaining_ingredients > 0
        output += remaining_output
        end
  end
  return output
end

# Driver test code

p recipe_batch_calc("pie", 3)
p recipe_batch_calc("pie", 7)
p recipe_batch_calc("pie", 8)
p recipe_batch_calc("cake", 5)
p recipe_batch_calc("cake", 7)
p recipe_batch_calc("cookie", 1)
p recipe_batch_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

=begin
#  Reflection
What did you learn about making code readable by working on this challenge?
- I learned that refactoring and adding in more of Ruby's built-in methods adds
a lot of readability. You can tell at a glance what the purpose of a statement/method
is, vs. having to step through multiple lines of code and figure out what it's doing.
Built-ins are especially helpful when reading someone else's code.

Did you learn any new methods? What did you learn about them?
- Yes, we tried out Hash#has_key? as a way of determining whether the item_to_make argument
could be found in the Hash. It's a good example of how using a built-in method gave
more semantic meaning to what the code was doing.

What did you learn about accessing data in hashes?
- I didn't realize (or forgot) that when using Hash.each {|item|} item refers to the entire
key/value pair in the hash. I had seen the notation {|key,value|} before, so I thought
that if you only defined one variable, it would just be the key without the value. Our guide
drew our attention to the fact that in the original code library.each do |food| was actually
passing in both the food item AND it's number value to the code block. In our refactored code,
we removed this and made it less amiguous.

What concepts were solidified when working through this challenge?
- Hash iteration, implicit/explicit return values, nested control structures, and DRY-ness!

=end

