module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming! It's going swimmingly!"
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

module Edible
  def eat
    puts "Don't eat me."
  end 
end

class Animal
  include Walkable
  include Edible

  def reproduce_sexually?
    true
  end

  def speak
    "I'm an animal, and I speak."
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

# class Mammal < Animal
#   def warm_blooded?
#     true
#   end
# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   include Swimmable
# end

# bruno = Dog.new
# p bruno.reproduce_sexually?
# p bruno.warm_blooded?
# # p bruno.swim # => NoMethodError

# winston = Dog.new

# zoi = Cat.new
# p zoi.reproduce_sexually?
# p zoi.warm_blooded?

# nemo = Fish.new
# p nemo.reproduce_sexually?
# # p nemo.warm_blooded? # => NoMethodError

# puts nemo.swim
# puts bruno.swim
# puts winston.swim
# puts zoi.swim # NoMethodError

puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new
puts fido.speak
puts fido.walk
# puts fido.swim # NoMethodError
puts "---GoodDog method lookup---"
puts GoodDog.ancestors
