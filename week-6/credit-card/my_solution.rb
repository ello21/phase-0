# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Kevin Perkins
# I spent 1.25 hours on this challenge.

# Pseudocode

# Input: 16-digit Integer
# Output: Boolean value
# Steps:
# DEFINE "credit card" class

#   DEFINE "initialize" method, accept 16-digit integer "card num"
#     IF "card num" > 16 OR "card num" < 16
#       PRINT error
#     ELSE
#       SET "card num" instance var eql to "card num" as a string
#       SET "card_arr" instance var equal to an array of "card num" values, reversed
#     END
#   END

#   DEFINE "check card" method
#     DEFINE "double"! method
#       SET index counter i eql to 1
#       WHILE i less than "card_arr" length
#           "card_arr" at i eql "card_arr" at i times 2
#           i eql i plus 2
#       END
#     END

#     DEFINE "sum" method
#       CREATE instance var "sum"
#       JOIN each index of "card_arr" into one array element
#       SPLIT "card_arr" element into multiple sub-arrays
#       FOR each index of "card_arr"
#         add index to sum
#       RETURN sum
#     END

#     DEFINE "is_valid?" method
#     IF sum divided 10 has remainder 0
#       RETURN true
#     ELSE
#       RETURN false
#     END
#   END
# END


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(card_num)
#     if card_num.to_s.length > 16 || card_num.to_s.length < 16
#       raise ArgumentError.new ("Number must be 16 digits long")
#     else
#       @card_num = card_num.to_s
#       @card_arr = @card_num.split(//).reverse
#     end
#   end

#   def check_card
#     def double!
#       i=1
#       while i < @card_arr.length
#         num = @card_arr[i].to_i
#         @card_arr[i] = num *2
#         @card_arr[i] = @card_arr[i].to_s
#         i+=2
#       end
#     end

#     def sum
#       @sum = 0
#       @card_arr = @card_arr.join
#       @card_arr = @card_arr.split(//)

#       @card_arr.each {|digit|
#         @sum += digit.to_i
#       }
#     end

#     def is_valid?
#       if @sum % 10 == 0
#         true
#       else
#         false
#       end
#     end

#    double!
#    sum
#    is_valid?
#   end
# end

# Test Code
# card = CreditCard.new(4408041234567901)
# p card.check_card

# Refactored Solution

class CreditCard

  def initialize(card_num)
    if card_num.to_s.length == 16
      @card_num = card_num.to_s
      @card_arr = @card_num.split(//).reverse
    else
      raise ArgumentError.new ("Number must be 16 digits long")
    end
  end

  def check_card
    def double!
      @card_arr.map!.with_index {|x, i|
      	i.odd? ? (x.to_i) * 2 : x }
    end

    def sum
      @sum = 0
      @card_arr = @card_arr.join.split(//)
      @card_arr.each { |digit| @sum += digit.to_i }

    end

    def is_valid?
      @sum % 10 == 0 ? true : false
    end

   double!
   sum
   is_valid?
  end
end

card = CreditCard.new(4408041234567901)
p card.check_card



=begin
# Reflection

What was the most difficult part of this challenge for you and your pair?
- There were lots of conversions between data types. Several of our errors
were for trying to call methods on the wrong data type. Once we got a firm grasp
on which data type we were working with at any given time, our process was a lot
smoother.

What new methods did you find to help you when you refactored?
- We tried #map!with_index to destructively change the values only at certain
indexes. We also used #odd? to help with the same task. We used the ternary
operator to shorten our if/else statement into one line.

What concepts or learnings were you able to solidify in this challenge?
- We now understand how to call methods within methods within classes! Inside the
check_card method we defined 3 methods and at first we questioned how to call them
and whether there should be any receiver, such as #Array.is_valid? We learned that
since the methods are defined with the class and we're still inside that class we can
just call them without any receiver and it will default to the self object.
=end