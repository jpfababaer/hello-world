=begin
Suppose that your program has to deal with the object inside the variable some_random_input. If the object is:

a String: downcase it and print it
a Time: figure out the day of the week, downcased, and print
an Integer: figure out whether it’s odd or even and print (where X is the number)
"X is odd", or
"X is even"
a Symbol: downcase it and print it
nil: print "no object provided"
true: print "you may pass"
false: print "you may not pass"
a Hash: print the list of keys within the Hash, as an Array.

=end

unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample
input_class = some_random_input.class
pp input_class

if input_class == String
  pp some_random_input.downcase
elsif input_class == Time
  pp some_random_input.strftime("%A").downcase
elsif input_class == Integer
  if some_random_input.even?
    pp "#{some_random_input} is even"
  else
    pp "#{some_random_input} is odd"
  end
elsif input_class == Symbol
  pp some_random_input.downcase
elsif input_class == NilClass
  pp "no object provided"
elsif input_class == TrueClass
  pp "you may pass"
elsif input_class == FalseClass
  pp "you may not pass"
elsif input_class == Hash
  pp some_random_input.keys
end
