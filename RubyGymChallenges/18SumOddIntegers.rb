=begin

Write a program that receives any amount of numbers separated by spaces. The program should then print the sum of the odd numbers.

For example, if the input was ["9", "5", "4"], the program should only sum the “9” and the “5”, because those are odd numbers, and print

"14"
Get the expected output for the randomly sampled numbers below, and then get the tests to pass.

=end

inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers

odd_numbers = []

numbers.each do |numS|
  numI = numS.to_i

  if numI.odd?
    odd_numbers.push(numI)
  end
end

pp odd_numbers.sum
