#1-1 INITIALIZERS: 

#NOTE: Ruby's initialize method is AUTOMATICALLY called when a new Object is created = sets initial values for the Object's attributes. 

#Example: Person Initializer 

class Person
  attr_accessor :first_name, :last_name, :role

  def initialize(first_name, last_name, role)
    @first_name = first_name
    @last_name = last_name
    @role = role
  end
end

person = Person.new("Ian", "Heraty", "Instructor")
pp person.first_name #Ian
pp person.last_name #Heraty
pp person.role #Instructor

#NOTE: In the example above, the "initialize" method takes on THREE parameters and assigns them to the INSTANCE variables (i.e. variables prefixed with " @ ") -> when a new Person class is created (an Instance Object), we provide these details upfront. 

#1-2 SETTERS AND GETTERS - AUTO-CREATION AND CUSTOMIZATION:

=begin
#NOTE: Ruby provides the "attr_accessor" for automatically creating basic setters AND getters. There are special scenarios where we want to customize these methods. 

1. attr_accessor is a Ruby method that creates BOTH a setter and a getter for specified attributes (i.e. first_name, last_name, role, etc.)

2. Special scenario: when we need more control over how attributes are set or retrieved, we can customize our own setter and getter methods.

3. Customized getter: use "attr_reader" IF we want the Class property to be read into the console BUT not mutated at all.

4. Customized setter: use "attr_writer" IF we want the Class property to be mutated BUT not read into the console.

=end

#Example for NOTE #3 + #4: getters and setters

class Person
  attr_writer :first_name, :last_name, #We can change these properties as we please 
  attr_reader :first_name, :last_name, :role #We can view + change these properties but :role will NEVER be altered.

  def initialize(first_name, last_name, role)
    # we use 'self' here (instead of @) to refer to our custom setter method for first_name
    # this way it will be capitalized during initialization
    self.first_name = first_name
    self.last_name = last_name
    self.role = role
  end

  def first_name=(value)
    # to be prevent errors, we only allow first_name to be a String
    unless value.is_a?(String)
      raise TypeError, 'First name must be a string'
    end

    @first_name = value.capitalize #Capitalizes the first character and returns the rest as lowercase
  end

  # TODO: do the same for :last_name
 def last_name=(value)
	 unless value.is_a?(String)
		 raise TypeError, "Last name must be a string"
	 end
	 
	 @last_name = value.capitalize
 end
end

person = Person.new("Ian", "Heraty", "Instructor")
person.first_name = "John Paul"
person.last_name = "Fababaer"
pp person.first_name # "John paul"
pp person.last_name # "Fababaer"

=begin

Example 2: 
Define a Car class with the following requirements:

It should have make, model, and year attributes. Use an initializer to set these attributes when a new Car object is created. Also, create explicit setter and getter methods for these attributes.

=end

class Car
  attr_reader :make, :model, :year

  def initialize(make, model, year)
    # TODO: initialize attributes
	self.make = make
	self.model = model
	self.year = year
  end

  # TODO: Custom setters for make, model, and year
   def make=(value)
    # to be prevent errors, we only allow first_name to be a String
    unless value.is_a?(String)
      raise TypeError, 'Make must be a string'
    end

    @make = value.capitalize
  end
  def model=(value)
    # to be prevent errors, we only allow first_name to be a String
    unless value.is_a?(String)
      raise TypeError, 'Model must be a string'
    end

    @model = value.capitalize
  end
	
  def year=(value)
    # to be prevent errors, we only allow first_name to be a String
    unless value.is_a?(Integer)
      raise TypeError, 'Year must be an Integer'
    end

    @year = value
  end
end

# Test your Car class
car = Car.new("toyota", "camry", 2021)
pp car.make
pp car.model
pp car.year

# Change and then print the make
car.make = "ford"
pp car.make

# Change and then print the model
car.model = "explorer"
pp car.model

# Change and then print the year
car.year = 2022
pp car.year
