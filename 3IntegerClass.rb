#1-1 THE INTEGER CLASS:

#NOTE: Ruby differentiates between WHOLE NUMBERS (Integers) and DECIMAL NUMBERS (Float).

pp 7.class #logs Integer
pp 7.0.class #logs Float

#NOTE: as for syntax, we can use underscores (_) as a delimeter to make sense of numbers easier. Ruby will just ignore it.

#Format:
number = 10_000_000 #easier to read -> 10 million. 

#1-2 COMMON INTEGER METHODS:

#METHOD 1, +: Addition

#Example:
pp 12 + 5 #logs 17

#METHOD 2, -: Subtraction

#Example:
pp 12 - 5 #logs 7

#METHOD 3, *: Multiplication

#Example:
pp 12 * 5 #logs 60

#METHOD 4, /: Division

#Example:
pp 12 / 4 #logs 3

#METHOD 5, %: Modulus -> this takes the remainder after a division process

#Example: 
pp 12 % 4 #logs 0 because there is NO remainder when dividing 12 by 4.

#Example 2: 
pp 61 % 5 #logs 1. 

#NOTE: Remainder is the the EXCESS amount of value you have LEFT after doing division WITHOUT using with decimals. Idk man I forgot how to do remainders...

#METHOD 6, **: Exponentiation -> raising the value of a number to the POWER OF X

#Example: 
pp 3**2 #logs 9

#METHOD 7, .odd? or .even?: evaluates the number in question and returns a boolean.

#Example: 
pp 3.odd? #logs true
pp 4.even? #logs true
pp 3.even?  #logs false

#METHOD 8, rand(x): generates a number between 0 and x-1. This ONLY takes on NUMBERS (make sure the argument is in an Integer, or Float, class)

#Example:
pp rand(9) #logs a random number BETWEEN 0 to 8

#METHOD 9, .to_i: this converts a String number (i.e. "8") into an ACTUAL Integer class.

#Example: 
first_num = "8"
second_num = "100"

pp first_num.to_i + second_num.to_i #logs 108. WITHOUT .to_i, this would return an error. 

#METHOD 10, .to_s: this converts a Number into an ACTUAL String class.

#Example:
lucky_number = rand(100)

pp "Your lucky number is: " + lucky_number.to_s #logs "Your lucky number is X". WITHOUT .to_s, this would return an error because the Integer will NOT convert to a String class. 

#Example 2: different format
random_number = rand(1..6)
pp random_number

#NOTE: This will generate a random number between 1 to 6. This makes it easier to determine minimum and maximum value for random values generated. 
