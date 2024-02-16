=begin

Convert a number to a string, the contents of which depend on the number’s factors.

1. If the number has 3 as a factor, output "Pling".
2. If the number has 5 as a factor, output "Plang".
3. If the number has 7 as a factor, output "Plong".
4. If the number has any combination of those factors, output each (e.g. "PlingPlangPlong" if all three are factors)
5. If the number does not have 3, 5, or 7 as a factor, just print the number.
Examples:

28’s factors are 1, 2, 4, 7, 14, 28. In raindrop-speak, this would be a simple "Plong".
30’s factors are 1, 2, 3, 5, 6, 10, 15, 30. In raindrop-speak, this would be a "PlingPlang".
34’s factors are: 1, 2, 17, and 34. In raindrop-speak, this would be "34".
More Examples:

integer = 1, prints 1
integer = 5, prints "Plang"
integer = 21, prints "PlingPlong"

=end

integers = [1, 21, 35, 105]
integer = integers.sample
pp integer

#Given the hints above, use hints 1-5 and translate it to conditions that needs to be evaluated: 
if integer % 3 == 0 && integer % 5 == 0 && integer % 7 == 0 #Hint 4
  pp "PlingPlangPlong"
elsif integer % 3 == 0 && integer % 5 == 0 #Hint 4
  pp "PlingPlang"
elsif integer % 3 == 0 && integer % 7 == 0 #Hint 4
  pp "PlingPlong"
elsif integer % 5 == 0 && integer % 7 == 0 #Hint 4
  pp "PlangPlong"
elsif integer % 3 == 0 #Hint 1
  pp "Pling"
elsif integer % 5 == 0 #Hint 2
  pp "Plang"
elsif integer % 7 == 0 #Hint 3
  pp "Plong"
else #Hint 5
  pp integer 
end
