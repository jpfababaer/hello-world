#1-1 THE FUNDAMENTAL SYNTAX OF RUBY LOOKS LIKE:
2.add(3) 

#Format:
#1) OBJECT: the thing on the LEFT side of the dot (.), which is '2'.

#2) METHOD: the thing on the right side of the dot (.), which is '.add(3)'.

#3) WITHIN the method, there are two parts:

  #a) NAME OF METHOD: which is 'add'
  #b) ARGUMENT OF METHOD: the value inside of the parenthesis which is '(3)'- specifically the '3'.

#4) EXPRESSION: the object + method + argument all together.

#5) RETURN VALUE: the value that is returned when the expression is evaluated.

#Handling multiple expressions:

3.add(4.multiply(2)) 

#NOTE: when dealing with multiple expressions, Ruby will evaluate the expression from LEFT to RIGHT... searching for the FIRST complete, SELF-CONTAINED expression (i.e. (4.multiply(2)) which is contained inside the parenthesis)

#Using self.pp to print to the terminal (i.e. "log to the console"):
self.pp(2.add(3)) #this will print '5'

#'self' is a special object -> it represents DIFFERENT objects at different times - it just depends on whichever Object Ruby is CURRENTLY operating within.

#'pp', which stands for 'pretty print', is a METHOD we can call on the MAIN object. 'pp' takes the argument of the main object (in this case, 'self') and prints it to the terminal. 

#NOTE: 'self' is an IMPLICIT receiver = we can short-hand 'pp' calls without the 'self'. Implicit receiver: if we're calling a method on 'self', we can leave out 'self' out of the code and Ruby will know which Object is calling the method.

#Example of short-hand for 'self': instead of self.pp(2.add(3))
pp(2.add(3)) #this will produce the same outcome. Ruby knows to call 'pp' on 2.add(3)

#Example of short-hand for 'pp' parentheses: instead of pp.(2.add(3))
pp 2.add(3) #this will produce the same outcome. We just used ONE LESS parenthesis pair.

#1-2 - RUBY'S PRIMARY SYNTAX:

#Ruby's primary syntax: some_object.some_method (simpler terms: object.method) -> for example:
pp "Hello, world!".upcase

#NOTE: In terms of English language analogy: data (Object) = noun, method = verb, syntax = grammar. 

#NOTE: Almost everything in Ruby is an Object. This is the idea behind OOP. "Hello, world!" is an object - specifically, a STRING Class Object. 

#1-3 - Every class has different methods:

#Different classes (i.e. Strings) can perform different methods. Here are some below:

pp 7.odd? #true
pp 7.even? #false
pp "Raghu Betina".reverse #"aniteB uhgaR"
pp "Your Name".swapcase #yOUR nAME"
pp "Mississippi".length #11

#1-4 - Error Messages:

#NOTE: At all times, also think "What class is this Object?", "What methods does this class have available?" -> primary syntax: object.method

=begin
How to read an error message:

Example: 
(repl):2:in `<main>': undefined method `even?' for "Mississippi":String (NoMethodError)

Translation:
On line #2 of the program, you tried to use a method "even" on the Object "Mississippi" - which is a String class -. Sorry but the String class does NOT have a method called "even".
=end

#1-5 - Arguments are inputs: 

#NOTE: Some methods require additional inputs (i.e. arguments). For example:
pp "Java is a joy".gsub("Java", "Ruby") #"Ruby is a joy"

#gsub -> short for "globally substitute" which will replace ALL occurrences of ONE substring with another substring (in this case, "Java" -> "Ruby").

#In order for the Method "gsub" to function, we have to give it arguments which are placed inside the parenthesis. 

#1-6 - Variables are boxes:

upcase_string = "hello world!".upcase #storing a string value into a variable
pp upcase_string #"HELLO WORLD!"

#NOTE: Ruby reads the right side of the code first when assigning values to variables. "The string hello world dot upcase is assigned to variable upcase_string".

pp upcase_string.reverse #"!DLROW OLLEH"

#1-6 - Variable naming rules:

#1) Variable names can ONLY contain LOWERCASE letters, numbers, and underscores (_). There are NO spaces.

#2) Variable names can NOT begin with a number.

#3) Choose DESCRIPTIVE variable names = makes contents of the variable easy to understand AT A GLANCE.

#Basically: storage_box = noun.verb(input1, input2). Some shit like that. 
