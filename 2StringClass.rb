#1-1 CREATING STRINGS: 

#Shortcut to making strings: String literals
s = "Hello, world!"

#Formal approach: creating an empty variable that is a STRING CLASS.
s = String.new 

s = "Hello, world!" #storing a string into the EMPTY variable.

#1-2 MAKE THE INVISIBLE VISIBLE:

#This involves using 'pp' (pretty print) to see the variables/values we are dealing with. Like 'console.log' in JS.

#1-3 ASCII CODES AND .concat METHOD:

#.concat method: accepts a number (OR A STRING) as an argument (i.e. ASCII code) and translates it into a single character then adds it on the end of the original string.

#Example: 
my_string = String.new #empty string 

pp my_string #logs empty string

#Using .concat + ASCII codes to form a string:
my_string.concat(72)
my_string.concat(101)
my_string.concat(108)
my_string.concat(108)
my_string.concat(111)


pp my_string #logs "Hello". Each ASCII code corresponds to a character. 

#NOTE: If ever in need to use ASCII codes, just Google the table for it. 

#1-4 STRING METHODS:

#METHOD 2, .+: this is a short-hand for .concat. 

#Example: 
pp "hi" .+(" there") #logs "hi there"

#Description: .+ allows us to add strings together into one complete string.

#NOTE: applying syntatic sugar. If a CLASS (like Strings) INCLUDE a method named " + ", we can omit the " . " when applying the method.
pp "hi" + " there" #still logs "hi there"

#NOTE 2: we also remove the parenthesis around arguments if we want to for MORE syntatic sugar. 

#METHOD 3, .*: string multiplication 

#Example: 
pp "Hello" *3 #logs "HelloHelloHello".

#Description: allows us to multiply the String to a corresponding amount and multiply that value by that amount. 

#NOTE: ordering matters. We can NOT do this:
pp 3*"Hello" #logs an Error. Why? We can NOT multiply the Integer "3" to a String "Hello". That's not how math works. 

#METHOD 4, .reverse: takes on a String Object and creates a string written in REVERSE. Bruh.

#Example: 
pp "John Paul Fababaer".reverse #logs "reababaF luaP nhoJ"

#METHOD 5, .upcase: takes on a String Object and puts it ALL in UPPERCASE.

#Example: 
pp "john paul fababaer".upcase #logs "JOHN PAUL FABABER"

#METHOD 6, .downcase: takes on a String Object and puts it ALL in LOWERCASE.

#Example: 
pp "JOHN PAUL FABABAER".downcase #logs "john paul fababaer"

#METHOD 7, .swapcase: takes on a String Object and evaluates each string. If it is UPPERCASE -> turn it DOWNCASE (and vice-versa).

#Example: 
pp "JoHn PaUl FaBaBaEr".swapcase #logs "jOhN pAuL fAbAbAeR"

#METHOD 8, .gsub: takes on a String Object and replaces the first argument string given with the second argument string.

#Example:
a = "Hello"
pp a.gsub("ll", "ww") #logs "Hewwo". 

#Example 2:
sentence = "put_spaces_in_between_these_words"
pp sentence.gsub("_", " ") #logs "put spaces in between these words"

#Advance uses of gsub: 

#METHOD 9, .strip: takes on a String Object and REMOVES any TRAILING and LEADING whitespaces. 

#Example: 
pp "      This has a lot of spaces on the outside       ".strip #logs "This has a lot of spaces on the outside"

#METHOD 10, .capitalize: takes on a String Object and CAPITALIZES the FIRST character, everything else after are lowercased.

#Example: 
pp "beginning".capitalize #logs "Beginning"

#METHOD 11, .count: takes a SPECIFIC String Object as an argument and counts the # of times the argument exist in the calling Object.

#Example: 
greets = "Hi, my name is John Paul Fababaer"
pp greets.count(" ") #logs 6
pp greets.count("ieaou") #logs 11

#NOTE: this method is CASE SENSITIVE. If I capitalized all the vowels, it would NOT log "11" because the method would search for ONLY capitalized vowels (which none exist in this variable "greets").
