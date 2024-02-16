=begin
Twofer or 2-fer is short for two for one. One for you and one for me.

The program should print:

"One for X, one for me."
where X is a name or “you”.

If the given name is “alice”, the result should be

"One for Alice, one for me." 
(with “Alice” capitalized)

If no name is given, the program should print:

"One for you, one for me."
=end

name = ["raghu", "Bob", ""].sample

if name == ""
  pp "One for you, one for me"
else 
  pp "One for #{name.capitalize}, one for me"
end
