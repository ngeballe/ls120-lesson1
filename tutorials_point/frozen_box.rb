class Box
  MATERIALS = "ticky-tacky"
  LOOKS_JUST_THE_SAME_AS_OTHER_BOXES = true

  attr_accessor :width, :height
  
  # constructor method
  def initialize(w,h)
    @width, @height = w, h
    p "And they're all made out of #{MATERIALS}, and they all look..."
  end
end

class BoxDesignedByPeopleThinkingOutsideTheBox < Box
  MATERIALS = "something new and different!"
  LOOKS_JUST_THE_SAME_AS_OTHER_BOXES = false
end



box = Box.new(8, 4)
p box

p box.frozen? == false
box.freeze
p box.frozen? == true

# box.width *= 2

# p box.width == 16

p Box::MATERIALS == "ticky-tacky"
p Box::LOOKS_JUST_THE_SAME_AS_OTHER_BOXES == true

# Box::MATERIALS = "something else"
# p Box::MATERIALS == "something else"

puts

box2 = BoxDesignedByPeopleThinkingOutsideTheBox.new(100, 40)

p box2

p BoxDesignedByPeopleThinkingOutsideTheBox::MATERIALS
p BoxDesignedByPeopleThinkingOutsideTheBox::LOOKS_JUST_THE_SAME_AS_OTHER_BOXES == false
