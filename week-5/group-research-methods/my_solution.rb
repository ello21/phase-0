# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

#Person 1's solution: Erica Lloyd
def my_array_finding_method(source, thing_to_find)
  source.select { |item| item =~ /#{thing_to_find}/ } #=> Returns items from source array where item matches thing_to_find
end

p my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  match_hash=source.select { |key,value| value == thing_to_find } #=> Returns key/value pairs from source hash where value matches thing_to_find
  match_array =[]
  match_hash.each {|key, value| match_array.push(key)}
  match_array
end

p my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.

# For my_array_finding_method I used the "select" method for an array.
# This method searches the array for the pattern supplied in the code block
# and returns a new array containing the elements that matched.
# In the code block I used a Regular Expression (regexp) to describe the pattern
# I wanted to match. It translates to "match anything containing thing_to_find".
# This returns an array of matching items (words that contain thing_to_find).

# For my_hash_finding_method I used the same "select" method, but when using it with hashes
# 2 variables are defined -- one for each key, and one for each value. I defined the select
# statement to select any key/value pair (pet/age) where the value (age) is equal to thing_to_find.
# Using "select" on a hash returns hashes, so I created "match_array" to store only
# the keys returned (without the value). This returns an array of keys (pet names).

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
