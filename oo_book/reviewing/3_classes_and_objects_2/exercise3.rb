# When running the following code...

# class Person
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Steve")
# bob.name = "Bob"

# We get the following error...

# test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)


# We get the error because there's no name setter method, just a getter method. One solution is to replace "attr_reader :name" with "attr_accessor :name."

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
