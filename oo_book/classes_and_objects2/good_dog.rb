class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."    
  end

  def what_is_self
    self
  end
end

bruno = GoodDog.new("Bruno", "24 inches", "45 lbs")
puts bruno.info
p bruno.what_is_self
