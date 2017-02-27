class Animal

end

class Fish < Animal

end

class Mammal < Animal

end

class Cat < Mammal

end

class Dog < Mammal

end

p Dog.ancestors

p Cat.ancestors

p Fish.ancestors

p Mammal.ancestors

p Animal.ancestors
