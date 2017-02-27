# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

module Mappable
  def give_directions
    puts "Directions . . ."
  end
end

class Store
  include Mappable

  def initialize(name)
    @name = name
  end
end

safeway = Store.new("Safeway")
safeway.give_directions

# A module is a collection of behaviors that can be used by various classes via mixins.


