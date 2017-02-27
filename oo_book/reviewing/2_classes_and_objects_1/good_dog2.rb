# good_dog.rb

class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says Arf!"
  end
end

quincy = GoodDog.new("Quincy")
puts quincy.speak

bruno = GoodDog.new("Bruno")
puts bruno.speak

puts quincy.name

puts bruno.name = "Borat"
puts bruno.name
