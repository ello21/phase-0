
### Release 1:

What does `puts` do?
- `puts` stands for "put string" and it outputs a string to the terminal

What is an integer? What is a float?
- An integer is a number without a decimal point. A float (floating point number) is a number with a decimal value.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
- Float division is what we typically think of as "normal" divsion. If you input 2 numbers and one of them has a decimal points, your answer will return a decimal point as well.
- Integer division will take the answer and convert it into an integer. What you will see is the answer minus any numbers after the decimal point.

Example:
```ruby
puts (10/2.3).to_f #output: 4.347826086956522
puts (10/2.3).to_i #output: 4
puts 10/2.3 #output: 4.347826086956522
```
Line 1 uses floating point divsion and will output **4.347826086956522**.

Line 2 uses integer division and will output **4**. Important to note that the result for line 2 is **not** 5. The answer is calculating first and then the decimal is removed, as opposed to removing the decimals **before** dividing, which would have resulted in 5.

Line 3 does not specify which type of conversion to use, but since one of the inputs is a float, ruby automatically uses float division, resulting in **4.347826086956522** again.

### Release 2:
Hours in a year:
```ruby
puts (24*365) #output: 8760
```

Minutes in a decade:
```ruby
puts (60*24*365*10) #output: 5256000
```

### Release 7

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
- Addition, subtraction, and multiplication are performed normally, just as a calculator would. The result is then converted to a string before being outputted. The result of a division operation will differ based on whether the inputs are floats or integers.

What is the difference between integers and floats?
- An integer is a number without a decimal point. A float (floating point number) is a number with a decimal value.

What is the difference between integer and float division?
- Float division is what we typically think of as "normal" divsion. If you input 2 numbers and one of them has a decimal points, your answer will return a decimal point as well.
- Integer division will take the answer and convert it into an integer. What you will see is the answer minus any numbers after the decimal point.

What are strings? Why and when would you use them?
- A string is a group of characters. You would use a string in order to output characters to the terminal for the user to see. In ruby, other variables types such as integers are converted to strings before being outputted, but when writing programs we should be aware that an error can occur when trying to use `puts` with a variable that isn't a string.

What are local variables? Why and when would you use them?
- A local variable is one that can be accessed with a certain "environment". We would use this type of variable when we want to be able to initialize, manipulate and store a variable, but will not need it in the larger "global" environment.

How was this challenge? Did you get a good review of some of the basics?
- Small simple exercises made the info easy to practice. It was a well needed review since I haven't worked with Ruby in months. It was also a good beginner intro to Rspec, which I haven't worked with before.

**Challenge links:**
https://github.com/ello21/phase-0/blob/master/week-4/basic-math.rb

https://github.com/ello21/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/ello21/phase-0/blob/master/week-4/simple-string.rb