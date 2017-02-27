# How do we create an object in Ruby? Give an example of the creation of an object.

class Store
  def initialize(name)
    @name = name
  end
end

franks = Store.new("Frank's General Store")
p franks
