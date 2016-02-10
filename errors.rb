# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# => "unexpected end-of-input, expecting keyword_end"
# 5. Where is the error in the code?
# => At the end of the file,
# 6. Why did the interpreter give you this error?
# => The "while" statement should have an "end" nested before the
# => methods "end". The control flow continues down the rest of
# => the file looking for "end". When it reached the end of the
# => file it returned an error stating that it expected "end".

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 38
# 2. What is the type of error message?
# => Name Error
# 3. What additional information does the interpreter provide about this type of error?
# => "undefined local variable or method `south_park' for main:Object (NameError)""
# 4. Where is the error in the code?
# => line 38
# 5. Why did the interpreter give you this error?
# => "south_park" is being referenced, but has not been defined as a method or variable.
# => The program does not recognize the name since it has not been stored.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 53
# 2. What is the type of error message?
# => No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# => "in `<main>': undefined method `cartman' for main:Object (NoMethodError)"
# 4. Where is the error in the code?
# => line 53
# 5. Why did the interpreter give you this error?
# => "cartman()" is the syntax that would be used to call a method, however a cartman
# => method has not been previously defined.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 70
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => "in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError) from errors.rb:74:in `<main>'"
# 4. Where is the error in the code?
# => line 70/74
# 5. Why did the interpreter give you this error?
# => The "cartmans_phrase" method was defined without any parameters, however, when it
# => was called it was given the argument ('I hate Kyle'). The argument can't be passed
# => in since the method was not written to accept it.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 91
# 2. What is the type of error message?
# => Arguments Error
# 3. What additional information does the interpreter provide about this type of error?
# => "in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError) from errors.rb:95:in `<main>'"
# 4. Where is the error in the code?
# => line 91/94
# 5. Why did the interpreter give you this error?
# => The "cartman_says" method was defined to accept one parameter, however, when it was
# => called it was not given an argument. Whenever this method is called it will expect
# => that an argument will be passed in.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 114
# 2. What is the type of error message?
# => Arguments Error
# 3. What additional information does the interpreter provide about this type of error?
# => "in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError) from errors.rb:118:in `<main>'"
# 4. Where is the error in the code?
# => line 114/118
# 5. Why did the interpreter give you this error?
# => The "cartmans_lie" method was defined to accept two parameters, however, when it was
# => called it was only given one argument. Whenever this method is called it will expect
# => that two arguments will be passed in.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 135
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => "in `*': String can't be coerced into Fixnum (TypeError) from errors.rb:135:in `<main>'""
# 4. Where is the error in the code?
# => line 135
# 5. Why did the interpreter give you this error?
# => The Fixnum object can't accept a String as an argument. "5 * "Respect my authoritay!""
# => is telling the program to multiply 5 "Respect my authoritay!" times, which isn't possible.
# => If the intent is to create 5 multiples of "Respect my authoritay!", which IS possilble, the
# => syntax would be " "Respect my authoritay!" * 5 "

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 153
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => "in `/': divided by 0 (ZeroDivisionError)from errors.rb:153:in `<main>'"
# 4. Where is the error in the code?
# => 20/0
# 5. Why did the interpreter give you this error?
# => Division by zero results in an "undefined" result. The result is not zero, but rather
# => something more like infinity, or not-a-number. Ruby is written to throw an error
# => whenever division by zero takes place, which will let the programmer or user know
# => that the calculation is incorrect.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 172
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => "in `require_relative': cannot load such file -- /vagrant/phase-0/cartmans_essay.md (LoadError)"
# 4. Where is the error in the code?
# => 172: "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# => The "require" method tells Ruby to load or link to a file. The "_relative" extension
# => tells it that the file path given is a relative path. So calling "require_relative "cartmans_essay.md"
# => causes the program to try to load the file, however, there is no such file in our directories.
# => When the program searches for it at the path "cartmans_essay.md" it does not locate it.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => The first error with the "while" statement.

# How did you figure out what the issue with the error was?
# => At first I thought that it was an infinite loop issue, but then realized that the
# => method was never actually called, only defined so it couldn't that. Also since the
# => program reached the end of the file, I knew it didn't get stuck in a loop. I looked
# => "Ruby while" and quickly realized that the while statment needs an "end" in order to
# => signal that it's finished.

# Were you able to determine why each error message happened based on the code?
# => Yes. My approach was to look at the code first and determine what the error was, then
# => run it and make sure the error was what I expected.

# When you encounter errors in your future code, what process will you follow to help you debug?
# => I'll go to the line that has the issue and see if there are any undeclared variable names,
# => undefined methods, wrong # of arguments, and so on. I like to look at what's happened in the
# => up until that point in the control flow.