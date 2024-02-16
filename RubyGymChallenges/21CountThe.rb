=begin 

Write a program that: Takes a String, then finds the number of times ‘the’ appears in the given String, and finally prints:

  "'the' appeared X times"
where X is an Integer.

Make sure each of the randomly sampled sentences below outputs the correct response, then get the tests to pass.

=end

sentences = [
  "the dog, the cat, the zebra, the giraffe",
  "the, the code, and the developer",
  "then the- their"
]
sentence = sentences.sample
pp sentence

#Empty array that stores all the "the" elements
the_array = []

#Use the .split Method to create an Array that splits the sentence on EACH whitespace
sentence_array = sentence.split(" ")

#Iterate through each element in the Array sentence_array to "clean up" any special characters 
sentence_array.each do |element|
  gsub_el = element.gsub(/[^a-z0-9]/i, "") #This is used to handle the special characters "," and "-". By removing them, we can accurately evaluate if the element is EXACTLY the String "the".
  if gsub_el == "the" 
    the_array.push(gsub_el) #Add all "the" elements into the Array the_array
  end
end

pp "'the' appeared #{the_array.length} times" #print the expected output by using the .length method on the Array "the_array"
