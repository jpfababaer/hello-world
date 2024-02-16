#1-1 IF STATEMENTS

#NOTE: in order to deal with user input, we have to use "If" conditions

#Format: 
lucky_number = rand(100)

pp "Your lucky number is #{lucky_number}"

#Use the "if" keyword to start the condition statement and the "end" keyword to close EACH "if" statement.
if lucky_number.odd?
  pp "The number is odd." #If the randomly generated number is an odd value -> console prints this phrase. If NOT = NOTHING else happens.
end

#NOTE: If the condition is met = truthy value -> execute code block (and vice-versa).

#1-2 MULTIBRANCH IF STATEMENTS:

#NOTE: used to specify fallback conditions in case the first condition fails (i.e. returns a falsy value)

#Example: 
the_temp = rand(100)

if the_temp > 75 
  pp "It's #{the_temp}. It's going to be a great day!"
elsif the_temp > 32 
  pp "It's #{the_temp}. It'll be an okay day."
else 
  pp "It's #{the_temp}. Don't leave home today!"
end

#NOTE: Conditions are checked from TOP-DOWN priority. When a condition is read and returns a truthy value -> the code block inside it is executed. Everything else is ignored. 

#NOTE 2: If nothing ELSE is true -> executes the "else" block (if it exists). 

#NOTE 3: There is no need for an "end" keyword for "elsif" and "else" keyword - just the "if".

#1-3 TRUTHY AND FALSY VALUES:

#NOTE: Falsy values include returned values of: NIL and FALSE

#NOTE 2: Truthy values include returned values of: 0, "false" (String), [], 1==1 (Boolean), "" (to name a few).

#Example 1: determine if the words inside the Array is a palindrome.
word = ["HanNah", "racecars", "racecar"].sample

palindrome = word.downcase.reverse #downcase to make sure the comparison is identical, then use reverse because that's what a palindrome is.

if word == palindrome #if both variables are identical = the word that was sampled is a palindrome.
  pp true
else
  pp false
end

#1-4 "AND" AND "OR" CONDITIONS:

#NOTE: "AND" conditions require that both values being evaluated to be BOTH TRUTHY to return TRUE. "OR" conditions only require ONE TRUTHY value to return TRUE.

#Example: 
if 3.odd? && 4.even? 
  pp "The combined expression is truthy."
end #executes the code inside since the conditions are BOTH true.

#Example 2:
if 3.even? || 4.even?
  pp "At least one of the expression is truthy."
end #executes the code inside since AT LEAST ONE of the conditions is true (4.even?).

#Example: what is the expected output?
number1 = 10 
number2 = 15
sum = number1 + number2

if sum > 10 && sum < 20
  pp sum
elsif number1 >= 10 || number2 > 20
  if number1 > number2
    pp number1
  else
    pp number2
  end
else
  pp "skipping"
end

#Check the answer below.






















#The answer is 15.
