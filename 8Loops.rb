#1-1 LOOPS:

#NOTE: using "if" statements = conditionally does something ONCE.

#NOTE: using "while" statements = conditionally does something UNTIL the condition turns FALSE.

#Example:
numbers = Array.new

while numbers.length < 0 #At the start, Array "numbers" is empty = 0 length = condition is true.
  new_number = random(100) #Generate a random # and store it to variable "new_number"
  numbers.push(new_number) #Store the new value into Array "numbers" -> Iteration +1
end

len = numbers.length #This line is ONLY executed when the "while" loop finishes -> logs 10

pp numbers #prints the Array after its been filled up by 10 random numbers.
pp "The numbers array contains: #{numbers}"
pp "The length of it is: #{len}"

#1-2 LOOPING WITH BLOCKS:

#Example: our "while" loop can contain many lines of code that is executed as long as the conditions are met.
mississippis = 1 #starting counter

while mississippis <= 10
  pp "#{mississippis} Mississippi"

  mississippis += 1 #updates our counter at each iteration (using short-hand for: mississippis = mississippis + 1))
end

#1-3 METHOD .times: this is an Integer method

#Format:
#[Integer].times ["do" keyword]
  #block of code
#["end" keyword]

#Example:
10.times do 
  pp "Why is this confusing" #logs "Why is this confusing" ten times.
end

=begin
Problem: write a program that prints the numbers 1-30 EXCEPT: 

1) for multiples of 3, print "Fizz" instead
2) for multiples of 5, print "Buzz" instead
3) for multiples of 3 AND 5, print "FizzBuzz"

NOTE: if a number is divisible by 3 AND 5, its remainder will ALWAYS = 0 -> filters 15 and 30. If a number returns "0" when using the modulus operator = that # is divisible by the other number.
=end

#Solution:
counter = 0 #counter

30.times do
  counter += 1 #update counter IMMEDIATELY because the problem states to count from 1-30.
  if counter % 3 == 0 && counter % 5 == 0 #filters for numbers divisible by both numbers.
    pp "FizzBuzz"
  elsif counter % 5 == 0 #same logic using modulus.
    pp "Buzz"
  elsif counter % 3 == 0
    pp "Fizz"
  else
    pp counter
  end
end

#1-4 BLOCK VARIABLES:

#NOTE: utilizing block variables (" |variable name| ") allows us to automatically keep a counter when a loop goes through its iterations

#Format:
#[Integer].times ["do" keyword] |variable name| -> .times can be swapped to: .upto(), .downto(), or .step()
  #block of code
#["end" keyword]

#Example:
3.times do |count|
  pp count 
end 

#NOTE: At each iteration, variable block "count", which STARTS at 0, is printed to the console. When the iteration ends, Block Variable "count" updates +1 and it continues until .times finishes its execution (in this example, 3 iterations)

#METHOD 1, .upto: requires a starting number (Integer Class at the start of the method). The argument placed inside of .upto is the value it will count up to (the block variable increases by +1)

#Example: 
5.upto(10) do |counter|
  pp counter
end

#logs 5 6 7 8 9 10

#METHOD 2, .downto: the inverse of .upto

#Example: 
99.downto(90) do |counter|
  pp counter
end

#NOTE: the block variable "counter" starts with the value of the Object placed in front of the Method.

#METHOD 3, .step: requires a starting number (Integer Class at the start of the method). Takes on two arguments, the first argument: the value we are trying to "step" to. The second argument: the amount of "steps" we are trying to take at EACH iteration.

#Example: 
1.step(10, 3) do |counter| #Essentially: at starting step "1", I want to take 3 steps UP at each iteration until I reach step "10".
  pp counter
end

#logs 1 4 7 10 

#Example: using a negative value for the step
10.step(1, -4) do |counter| #Essentially: at starting step "10", I want to take 4 steps DOWN at each iteration until I reach step "1".
  pp counter
end

#logs 10 6 2 -> does NOT have a 4th VALUE because the LOWER limit is set to 1. If it takes the 4th step = value goes UNDER "1". Since our lower limit is set to "1", we can NOT print "-2" due to the limiters we set in place.


#Example Problem: write a program that, given one of the randomly sampled "n" numbers, print a multiplication table of the number from 1 to 10. If the number is 0, print "0" ten times.

n = [3,10,15,0].sample

if n == 0
  10.times do 
    pp n
  end
else 
  n.step(n*10, n) do |multiples| #Block Variable "multiples" start at 0. At first iteration, the "n" value is added to multiples and the iteration continues until the upper limit (n*10) is reached.
    pp multiples
  end
end
