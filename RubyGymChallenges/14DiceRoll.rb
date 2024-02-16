=begin

Write a program that:

generates a random guess for a dice roll (a number between 1 and 6)
generates another random dice roll (a number between 1 and 6).

if the guess is right, your program should print:
  "You guessed correctly."
if the guess is not right, your program should print:
  "Sorry, you guessed X. The die landed on Y." 
(where X is the random guess and Y is the roll)

=end

player_guess = rand(1..6)
computer_guess = rand(1..6)

if player_guess == computer_guess
  pp "You guessed correctly."
else
  pp "Sorry you guessed #{player_guess}. The die landed on #{computer_guess}"
end

