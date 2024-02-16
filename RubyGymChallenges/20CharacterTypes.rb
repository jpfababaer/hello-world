=begin

Write a program that:

1. Takes a String
2. Counts the total number of letters in the given String
3. Counts the total number of spaces in the given String
4. Counts the total numbers of digits in the given String
and prints the information out

Example output for string = "here 12 plus 25":

"Number of letters in the string is: 8"

"Number of spaces in the string is: 3"

"Number of digits in the string is: 4"

Make your program match this target output using the randomly sampled strings provided. Then get the tests to pass.

=end

strings = [
  "here 12 plus 25",
  "puzzle number 04 ",
  " "
]
string = strings.sample
pp string

letter_count = string.gsub(/[^a-z]/i, "").length
space_count = string.count(" ")
digits_count = string.gsub(/[^0-9]/, "").length

letter_output = "Number of letters in the string is: #{letter_count}" 
space_output = "Number of spaces in the string is: #{space_count}"
digits_output = "Number of digits in the string is: #{digits_count}"

pp letter_output, space_output, digits_output
