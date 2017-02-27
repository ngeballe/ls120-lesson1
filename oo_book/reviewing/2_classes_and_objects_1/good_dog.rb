# good_dog.rb

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Arf!"
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

quincy = GoodDog.new("Quincy")
puts quincy.speak

bruno = GoodDog.new("Bruno")
puts bruno.speak

puts quincy.name

puts bruno.name = "Borat"
puts bruno.name
