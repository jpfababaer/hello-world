#1-1 EACH METHOD: iterating over an Array's elements.

#Example: 
words = ["apple", "banana", "orange"]

words.each do |the_word| #The block variable, now associated with the .each method, stores individual elements in the attached Array. It references an element STARTING from index 0 instead of just storing an Integer value when using .times (or .step).
  pp the_word.capitalize
  pp the_word.reverse
  pp the_word.upcase
end

=begin
Advantages of using .each:
1) .each does the counting for us -> determines the # of elements inside of a given Array.
2) the block variable used (i.e. "the_word") actually contains the element value (which can be any data type depending on the element at that index position)
=end

#Example 2:
word = ["Ruby", "application", "zebra"].sample

spelling = word.split('') #Create an Array "spelling" containing each character as its own ELEMENT.

spelling.each do |letter| #The block variable "letter" contains a singular character (ELEMENT) from the Array spelling.
	pp letter.upcase
end

#Example 3: write a program that, given the list_of_words Array, only prints the words that have an even number of characters.

list_of_words = ["zebra", "giraffe", "monkey", "salmon", "odd", "even", "squad"]

list_of_words.each do |word| #.each evaluates each INDIVIDUAL element inside of Array "list_of_words"
  if word.length.even? #Turn each block variable "word" into an integer value by using ".length" to take advantage of Method ".even?"
    pp word #If it returns true -> print the word.
  end
end

#Example 4: use .each to write a program, given the randomly sampled Array "word", print each letter in the word, and the number of times that letter appears.

#Expected outcome: X appears Y times where "X" is the letter and "Y" is the frequency.

word = ["photo", "like", "commenter", "loop", "levee"].sample

word_letters_array = word.split("") #Create a new Array "word_letters_array" that contains the individual characters in the randomy sampled "word"

word_letters_array.each do |letter| #use .each to examine EACH character in the Array.
  letter_num = word_letters_array.count(letter) #use .count() to examine the frequency of a SPECIFIC variable "letter" and store that frequency value into Variable "letter_num"
  pp "#{letter} appears #{letter_num} times" 
end
