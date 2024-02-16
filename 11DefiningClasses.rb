#1-1 DEFINING OUR OWN CLASSES: 

#NOTE: We can define our OWN CLASS to represent Objects using the class keyword.

#Format: Basic
class Person
end

pp Person.new #logs #<Person:0x00007f931f199038>

#Format: declaring attributes to the class
class Person
  attr_accessor :first_name #class Person's attributes
  attr_accessor :last_name
  attr_accessor :role
end

pp Person.new.first_name #logs nil. We did not declare anything on it yet.

#1-2 DEFFINING INSTANCE METHODS: 

#NOTE: Using the def keyword, we can define our own methods inside of the Class. 

=begin
Format:
def method_name
  code block doing "stuff"
  return "stuff"
end 

pp method_name -> this calls the method
=end 

#Example:
def square_root(a_number)
  answer = a_number**0.5
  return answer
end

pp square_root(9) #logs 3
pp square_root(144) #logs 12

#Example 2: continuously building up the Class Person
class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :role

  #Defining a method inside a Class:
  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end

#Creating an Instance Class "homer_simpson" with its unique attribute values
homer_simpson = Person.new 
homer_simpson.first_name = "Homer"
homer_simpson.last_name = "Simpson"

#Calling Class method "full_name" to finish the String phrase
pp "Hello, #{homer_simpson.first_name} #{homer_simpson.last_name}" #logs "Hello, Homer Simpson!"

#NOTE: We use the "return" keyword in the code block for Class method "full_name" so that when the method is called, the code block is executed, and the method ITSELF gets replaced by an actual RETURNED VALUE which is determined wherever the "return" keyword is placed.

#NOTE 2: The keyword "self" refers to the Object who is ASKED to calculate its full name -> in this case, the Object in the example is "homer_simpson".

#Example 3: EVEN MORE building inside of the Class Person
class Person
  #Calling on the date Class
  require "date"

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :role

  #Defining a new attribute
  attr_accessor :birthdate

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  #Defining a new method utilizing the date Class
  def age 
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = dob - now
    age_in_years = age_in_days / 365 #Rational Class

    return age_in_years.to_i #Convert Rational to Integer class
  end
end

homer_simpson = Person.new 
homer_simpson.first_name = "Homer"
homer_simpson.last_name = "Simpson"

homer_simpson.birthdate = "April 19, 1987"
pp homer_simpson.age #logs 36 -> returned valued from using Method "age"

#1-3 DEFINING CLASS METHODS:

#NOTE: The methods "full_name" and "age" are KNOWN as INSTANCE methods because we call these methods on individual Instances created from the Class (i.e. homer_simpson -> Classes created from Class Person = Instance "homer_simpson").

#NOTE 2: We can also define class-level methods that is called DIRECTLY on the Person class.

#Example: of Note 2
class Person 
  attr_accessor :first_name
  attr_accessor :last_name

  #Class-level method format:
  def Person.parse(last_comma_first) #requires an argument that is formatted like: ("Last name, First name")
    last_first_array = last_comma_first.split(",") #creates an array with 2 elements. At index 0 -> last name. At index 1 -> first name. These elements are split via " , " that is part of the argument.
    last_name = last_first_array.at(0).strip #create a variable to store the last name string using .at() to locate the value and .strip to take out any leading or trailing whitespaces.
    first_name = last_first_array.at(1).strip #create a second variable to store the first name string using .at() and .strip

    #Creating an Instance "new_person" -> defined INSIDE of the Class Person = Class Method.
    new_person = Person.new #immediately create a new Instace "new_person" when the method "parse" is called.
    new_person.first_name = first_name #assign values based of the code block above and store it into the Instance attributes
    new_person.last_name = last_name

    return new_person #return value is a NEW INSTANCE created inside of Class Method.
  end
end

#This is a Class Method call - NOT a straight up Instance creation call (i.e. variable = Class.new). The Instance creation happens INSIDE of the method call.
a_person = Person.parse("Betina, Raghu") #creating an Instance "a_person" by CALLING on the CLASS METHOD -> immediately defines attributes "first_name" and "last_name" due to the CLASS METHOD.
pp a_person.first_name #logs "Raghu" via Instance "a_person" attribute -> immediately defined due to Class method 'parse' doing its job. 
pp a_person.last_name #logs "Betina" via Instance "a_person" attribute -> since 'parse' Class method did its job, we do NOT have to MANUALLY define the values for these attributes.

#NOTE: We define the method as "def Person.parse" (versus def parse) to make it a class method (rather than an instance method) -> this way, the method is directly and immediately called to the Class Person.

=begin
Class Building Practice - build a Class 'User' with attributes that include: username, email, bio, birthdate.
Instance methods that include: age (calculates the number of years between today and birthdate) and about_me (puts together a string that uses the username, age, bio, and email
to read, in downcase: "username (age): bio. Reach me at: email")

NOTE: The instance methods should return a value (not print anything to the terminal)
=end

#Solution:
class User 
  require "date"

  attr_accessor :username, :email, :bio, :birthdate #Format for defining multiple attributes at once

  def age
    dob = Date.parse(self.birthdate) #Takes in an input of Date and method 'parse' makes sense of it
    now = Date.today #Browser determines the date today in the same format as above
    age_in_days = now - dob #Returns a value of the difference between the two values in the Class RATIONAL.
    age_in_years = age_in_days / 365 #determines the age in years (still in Class Rational)

    return age_in_years.to_i #This determines which value is returned to Method 'age'. ALSO converts the Class Rational into Integers.
  end

  def about_me
    introduction = "#{self.username.downcase} (#{age}): #{self.bio}. Reach me at: #{self.email}" #Using string interpolation, we take all the attribute information we have to create + store a String value into "introduction"
    return introduction 
  end
end

#Creating a new Instance + defining its attribute values:
joe = User.new
joe.username = "JOE"
joe.email = "joe@example.com"
joe.bio = "Ruby enthusiast"
joe.birthdate = "1987-04-19"

#Calling on the Instance method to produce an output in the terminal:
pp joe.about_me #logs "joe (36): Ruby enthusiast. Reach me at: joe@example.com"

#1-4 INHERITANCE:

#Format: use " < "
class Person
  attr_accessor :first_name
  attr_accessor :last_name

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end

#Creating a Class "Instructor" with its own unique attribute ":role" WHILE inheriting default attributes from Class Person
class Instructor < Person
  attr_accessor :role
end

#Creating a Class "Student" with its own unique attribute ":grade" WHILE inheriting default attributes from Class Person
class Student < Person
  attr_accessor :grade
end

#Example: creating an Instance "person1" using Class Instructor
person1 = Instructor.new
person1.first_name = "Master"
person1.last_name = "Shifu"
person1.role = "Dragon Warrior Trainer"

#Example 2: creating an Instance "person2" using Class Student
person2 = Student.new
person2.first_name = "Panda"
person2.last_name = "Po"
person2.role = "Dragon Warrior in-training"

#NOTE: trying to access an Instance attribute that does NOT exist within the Class will throw an error 

=begin
Example: 
(repl):28:in `<main>': undefined method `grade' for #<Instructor:0x00007f9a85af7f40 @first_name="Raghu", @last_name="Betina", @role="Lecturer"> (NoMethodError)

pp person1.grade
          ^^^^^^

Class Inheritance Building Practice - Create a new "Admin" Class that inherits everything from the "User" Class. Also add the attribute "password" to the new "Admin" Class
=end

class User
  require "date"

  attr_accessor :username, :email, :bio, :birthdate

  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end

  def about_me
  introduction = "#{self.username.downcase} (#{self.age}): #{self.bio}. Reach me at: #{self.email}"
  return introduction
  end
end

class Admin < User
  attr_accessor :password
end

admin1 = Admin.new
