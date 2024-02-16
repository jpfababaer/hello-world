=begin

Write a program that ingests a secret message and “encodes” the message by replacing vowels with other characters

Here is our secret code, don’t tell anyone: a = 1, e = 2, i = 3, o = 4, u = 5

Your program should print the encoded message.

Make sure each of these the secret strings below output the correct encoded response, then get the tests to pass.

=end

secret = [
  "I have a secret to share",
  "Is this secure enough for my PASSWORD?",
  "we should be more clever"
].sample

#Creating a hash to supply the second argument of .gsub with the values needed to be substituted depending on the vowel.
sub_keys = { 
  "a" => "1",
  "e" => "2",
  "i" => "3",
  "o" => "4",
  "u" => "5"
}

#This is a specific format knowledge you need to know to make the .gsub method to work. Look for it on the "advanced gsub function".
encoded = secret.downcase.gsub(/[aeiou]/, sub_keys) 
pp encoded
