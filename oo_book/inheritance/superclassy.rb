class Parent
  def say_hi
    p "Hi from Parent."
  end
end

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "Send from Child...."
  end

  def instance_of?
    p "Je suis un fake instance"
  end
end

p Parent.superclass
child = Child.new
child.say_hi

son = Child.new
# son.send :say_hi

# a = Array.new(3)
# p a

# a.send :push, 8
# p a

c = Child.new
p c.instance_of?(Child)
p c.instance_of?(Parent)
