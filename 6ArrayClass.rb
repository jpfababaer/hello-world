#1-1 THE ARRAY CLASS:

#Array class: a container for other objects. It can hold however many Objects we want. 

#Format: creating Arrays FORMALLY
cities1 = Array.new #creates an empty Array

#METHOD 1, .push: takes an argument we would like to STORE into a given Array.

#Storing Objects (called elements when inside an Array):
cities1.push("New York")
cities1.push("Chicago")
cities1.push("LA")
cities1.push("Manila")

pp cities1 #logs an Array that stores all 4 Strings in the order it was written -> ["New York", "Chicago", "LA", "Manila"]

#Format: Array literals -> short-hand to creating Arrays
cities = ["Chicago", "NYC", "LA"]
pp cities #logs ["Chicago", "NYC", "LA"]

#1-2 ARRAY METHODS:

#METHOD 2, .at: takes an Integer argument to return a value from the Array at that SPECIFIC INDEX position.

#Example: relying on the Array above
pp cities.at(0) #logs "Chicago"
pp cities.at(1) #logs "LA"

#NOTE: Arrays start at index 0. 

#NOTE: When the Integer value we use is higher than the # of elements in an Array -> returns "nil" = absence of anything because that specific index does NOT exist in the Array. 

#.at short-hand: using "[]"

#Example: STILL using the Array example above
pp cities[1] #logs "NYC"

#METHOD 3, .first and .last: returns the first and last element in an Array, respectively

#Example: still the Array above..
pp cities.first #logs "Chicago"
pp cities.last #logs "LA"

#METHOD 4, .index: the inverse of .at method -> INSTEAD, searches for the given argument inside of a specific Array and returns its INDEX position.

#Example: 
pp cities.index("Chicago") #logs 0

#NOTE: If the argument presented to .index does NOT exisit -> returns nil. 

#METHOD 5, .split: when called on a String, will return an Array of substrings. When no argument is presented -> will split the larger String upon the whitespaces.

#Example: 
pp "alice bob carol".split #logs ["alice", "bob", "carol"] -> at default (no argument presented) will split it down to the spaces.

#Example 2: specifying an argument
pp "4,8,15,16,23,42".split(",") # logs ["4", "8", "15", "16", "23", "42"]

#Example 3: splitting with an empty string as argument = creates an Array of characters
a = "Hello!".split("")
pp a #logs ["H", "e", "l", "l", "o", "!"]

#METHOD 6, .count: counts how many elements are inside a specific Array

#Example: 
a = [8, 3, 1, 19, 23, 3]

pp a.count #logs 6. No argument = gives # of elements inside of an Array -> identical to .length METHOD.
pp a.count(3) #logs 2. There are 2, "3" Integer class elements inside of Array "a".

#METHOD 7, .sample: returns a RANDOM element value from the array.

#Example:
an_array = [8, 3, 1, 19, 23, 3]

pp an_array.sample #logs a random number from the Array

#METHOD 8, .min, .max, .sum: self-explanatory not gonna lie

#Example:
a = [8, 3, 1, 19, 23, 3]

pp a.min #logs 1
pp a.max #logs 23
pp a.sum #logs 57
