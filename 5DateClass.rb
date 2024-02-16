#1-1 THE DATE CLASS:

#NOTE: To utilize the built-in class "Date" we first must initialize it (load it into our program)

#Format:
require "date" #That's it.

#1-2 USE CASE 1 - Date.new:

#Format:
new_date = Date.new #this creates a default Date class inside of variable "new_date"

pp new_date #logs a default value of: #<Date: -4712-01-01 ((0j,0s,0n),+0s,2299161j)>

#Using Date.new with arguments:

#Format: (year, month, day)
pp Date.new(2001) #logs #<Date: 2001-01-01 ((2451911j,0s,0n),+0s,2299161j)>

#Or
pp Date.new(2001,2,3) #logs #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>

#Or
pp Date.new(2001,2,-1) #logs #<Date: 2001-02-28 ((2451969j,0s,0n),+0s,2299161j)> 

#NOTE: the last example above uses "-1" which signifies the end date of a month.

#1-3 DATE METHODS:

#METHOD 1, Date.today: gives the current date to the user

#Example:
pp Date.today #logs #<Date: 2023-11-24 ((2460273j,0s,0n),+0s,2299161j)>

#METHOD 2, Date.year: gives the current year to the user

#Example:
pp Date.year #logs 2023

#METHOD 3, Date.month: gives the current month to the user in NUMBERS

#Example: 
pp Date.month #logs 11 -> signifies November

#METHOD 4, Date.day: gives the current day to the user in NUMBERS

#Example: 
pp Date.day #logs 24 -> 24th day in the month of November

#METHOD 5, Date.parse: accepts a String argument and TRIES to interpret it as a date.

#Examples:
pp Date.parse("2001-02-03")
pp Date.parse("20010203")
pp Date.parse("3rd Feb 2001")

#all of these will log: 
#<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
#<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
#<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>

#despite varying formatting inputted into the argument of Date.parse.

#NOTE: Subtracting two dates to get the difference in days

#Example: 
number_of_days = Date.today - Date.parse("July 4, 1776")

pp number_of_days #logs (90357/1) -> this is a Rational class.
pp number_of_days.to_i #this converts the Rational class into an Integer = allows us to use Integer methods on the value 90357.

#1-4 TIME METHODS:

#NOTE: like the Date class, helps us determine time. It's default time zone is UTC. Also does NOT need initialization like Date.

#NOTE: UTC has a 6 HOUR difference to CST.

#TIME METHODS SPEEDRUN:

#Time.now:
pp Time.now #logs 2023-11-24 23:43:19.635098315 +0000

#Time.now.year:
pp Time.now.year #logs 2023

#Time.now.day
pp Time.now.day #logs 24

#Time.now.hour
pp Time.now.hour #logs 23

#1-5 STRFTIME METHOD: used on a Date or Time Object which is then used to format the Date or Time in a particular way.

# weekday
pp Time.now.strftime("%A") #logs "Friday"

# month
pp Time.now.strftime("%B") #logs "November"

# month abbreviated
pp Time.now.strftime("%b") #logs "Nov"

# weekday abbreviated, day of month, time and minutes with AM/PM
pp Time.now.strftime("%a %e, %R %p") #logs "Fri 24, 23:45 PM"
