module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class Human
  include Speak
end

carl = GoodDog.new
carl.speak("Arf!")

susie = Human.new
susie.speak("Hello!")
