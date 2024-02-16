#1-1 HASH CLASS

#NOTE: Symbols are another data type that is almost identical to Strings. They are a data type that can be used to store text data. 

=begin
Symbols follow the same syntax:
1) they cannot contain spaces
2) can only contain lowercase letters, numbers, and underscores
3) can NOT begin with a number
=end

#Example:
symbol_class = :hello #use a colon to signify it is a Symbol class.

pp symbol_class.class #logs Symbol

#NOTE: Symbol classes are normally used for internal coding, for us - the developers. We use it to label something internally in our code. Essentially, Symbols are lightweight strings (contains less methods) used for labelling things. 

#Creating Hashes, FORMALLY:
person1 = Hash.new

#METHOD 1, .store: used to fill up a Hash with k/v pairs
person1.store(:first_name, "Raghu") 
person1.store(:last_name, "Betina")
person1.store(:role, "Instructor") 

#NOTE: .store() takes on two arguments. The first: Symbol class defining the key name. The second: the value corresponding to the key. k/v pair = referred to as elements.

pp person1 #logs {:first_name=>"Raghu", :last_name=>"Betina", :role=>"Instructor"}

#METHOD 2, .fetch: used to GET a value out of a Hash
person1.fetch(:role) #logs "Instructor"

#NOTE: it is possible to provide a fallback default to .fetch() in the case that the given argument does NOT exist inside of a Hash

#Example:
person1.fetch(:projects, "None provided") #the second argument provides the fallback since searching for a Key ":projects" does NOT exist in the hash.

#1-2 CREATING HASHES, INFORMALLY = HASH LITERALS

#Format:
person2 = {:first_name => "Jocelyn", :last_name => "Williams", :role => "Student"}

#NOTE: we use " => " (Hash rockets) to pair the key to its corresponding value. 

#1-3 .fetch SHORTHAND: USING "hash_name[symbol_name]"

#Example:
person2[:first_name] #logs "Jocelyn" -> therefore, can be used when in string interpolations. Like:
pp "Hi, my name is #{person2[:first_name]}. I am a #{person2[:role]}." 

#NOTE: when using .fetch(), if we search for a key that does NOT exist within the Hash = throws an actual error. (or a fallback error if we provide a second argument). However, if we use the SHORTHAND " [] ", the console will only produce "nil", NOT throw an error.

#Example 2: 
person2.fetch(:middle_name) #throws an error message.
person2[:middle_name] #when used on a NON-EXISTING key, the return value is "nil" -> does NOT throw an error.

#1-4 .store SHORTHAND: USING "hash_name[symbol_name] = value"

#Example: 
person3 = Hash.new

#using .store SHORTHAND:
person3[:first_name] = "John Paul"
person3[:middle_name] = "Garcia"
person3[:last_name] = "Fababaer"

#Example 1: given the Array "user", store the values in a Hash, print the Hash, and print the :occupation. 

user = ["Sari", "34", "Artist"]

#Short-hand used for storing k/v elements in Hash:
user_to_hash = Hash.new
user_to_hash[:name] = user[0]
user_to_hash[:age] = user[1].to_i #transform the String number into an Integer number
user_to_hash[:occupation] = user[2]

pp user_to_hash
pp user_to_hash.fetch(:occupation, "None provided") #Use the .fetch() Method (instead of the short-hand " [] ") in order to see possible errors.

#1-5 .keys METHOD: used to determine the Key names in a certain Hash. The return value for the Keys are stored in an ARRAY.

#Example:
classes = {"Slayer"=>1570, "Aeromancer"=>1580, "Destroyer"=>1540,"Gunslinger"=>1540,"Scrapper"=>1540,"Artillerist"=>1540} 

pp classes.keys #logs ["Slayer", "Aeromancer", "Destroyer", "Gunslinger", "Scrapper", "Artillerist"] -> can be stored somewhere to create a new Array.
pp classes["Slayer"] #logs 1570

#1-6 .key METHOD: used to find out a singular key value inside of a Hash (if we know what the value pair is)

#Example:
pp classes.key("1540") #logs Destroyer -> even though Gunslinger, Scrapper, and Artillerist are also 1540, this will return the FIRST key that contains the exact value in the argument
pp classes.key("1570") #logs Slayer
pp classes.key("1620") #logs nil

#NOTE: If the argument presented does NOT exist -> logs "nil" 

#NOTE 2: Keys can be an Object of ANY class. It does NOT have to just be Symbols.

#NOTE 3: Similarly, values can be any Object of ANY class when stored into a Key.

#1-7: Digging inside of NESTED Data structures:

#Example 1:
dictionary = {
  :colors => ["red", "green", "blue"],
  :person => {
    :name => "Jenna Parker",
    :age => 32
  },
  :occupation => "Librarian"
}

#Fetching "green"
pp dictionary.fetch(:colors)[1] #The "dictionary.fetch(:colors)" expression returns the Array value -> therefore, it is as if we are calling "Array[1]"

#Fetching 32:
pp dictionary.fetch(:person)[:age] #same reasoning as above. Using expressions to quickly dig into nested values.

#Example 2: Print the "lat" and "lng" values from gmaps_hash. Dig through the Hashes and Arrays using .fetch() and .at()
gmaps_hash = {
  :results => [
    {
      :address_components => [
        {
          :long_name => "University of Chicago",
          :types => [
              "locality"
          ]
        }
      ],
      :formatted_address => "University of Chicago, Chicago, Illinois",
      :geometry => {
          :location => {
              :lat => 41.7886,
              :lng => 87.5987
          }
      }
    }
  ],
  :status => "OK"
}

#Chaining the SHORT-HAND for .fetch() and .at() (which is []) to quickly get to the inner Key "geometry" and store it into corresponding variables.
latitude = gmaps_hash[:results][0][:geometry][:location][:lat]
longitude = gmaps_hash[:results][0][:geometry][:location][:lng]

pp "latitude: #{latitude}, longitude: #{longitude}"
