module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mix in module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

duke = Dog.new
nemo = Fish.new
paws = Cat.new

p duke.swim
p nemo.swim
p paws.swim
