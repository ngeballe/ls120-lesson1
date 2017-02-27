# good_dog.rb

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

class Reptile
end

# sparky = GoodDog.new
# sparky.speak("Arf!")
# sparky.speak("Who let me out? Who?! Who?!")

# bob = HumanBeing.new
# bob.speak("Hello!")

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

puts "---Reptile ancestors---"
puts Reptile.ancestors
