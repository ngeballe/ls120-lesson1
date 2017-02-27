class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    # p super # "Quincy"
    # puts super.class # => String

    @color = color
  end

  def speak
    # "#{self.name} says arf!"
    super + " from GoodDog class"
  end
end

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

class Cat < Animal
end

quincy = GoodDog.new("Quincy")
p quincy
zoi = Cat.new("Zoi")

puts quincy.speak
puts zoi.speak

bruno = BadDog.new(8, "Bruno")
p bruno
