class Person
  attr_writer :first_name, :last_name, :role
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name, role)
    # we use 'self' here (instead of @) to refer to our custom setter method for first_name
    # this way it will be capitalized during initialization
    @first_name = first_name
    @last_name = last_name
    @role = role
  end

  def first_name=(value)
    # to be prevent errors, we only allow first_name to be a String
    unless value.is_a?(String)
      raise TypeError, 'First name must be a string'
    end

    @first_name = value.capitalize
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
pp person.first_name
pp person.last_name
