#1-1 THE FLOAT CLASS:

#METHOD 1, .to_f: converts an Integer (or a String number) into a Float class.

#Example:
"12".to_f #logs 12.0 -> "0" signifying it turns into a decimal = Float class. 

#NOTE: The Integer methods (i.e. addition, subtraction, etc.) work similarly for floats. The only difference is that, when one of the numbers involved IS a FLOAT -> the returned value inherently becomes a Float class.

#Example
pp 12/6.0 #logs 2.0 -> a Float class

#METHOD 2, .round(): takes on a number as an argument. This argument defines how many decimal places we want to round a Float number.

#Example:
pi = 3.1415926535897932384626433832795028841976939937510
pp pi.round(9) #logs 3.141592654 -> at the 9th decimal place, the rounding of the number occurs. 

#NOTE: the rand() method, when dealing WITHOUT an argument = default returned values will be generated between 0 and 1 = a lot of FLOAT numbers. 

#Example:
pp rand #logs a random number EXCLUSIVELY float classes (since its between 0 to 1).
