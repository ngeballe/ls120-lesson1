class Animal
  def a_public_method
    "Will this work?" + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

bruno = Animal.new
bruno.a_public_method
# bruno.a_protected_method

p Animal.superclass
