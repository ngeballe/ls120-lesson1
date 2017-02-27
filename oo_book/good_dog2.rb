class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall"
    # "#{self.name} weighs #{self.weight} and is #{self.height} tall"
  end

  def informazione
    self.info
  end
end

quincy = GoodDog.new("Quincy", "12 inches", "20 lbs")
puts quincy.info

quincy.change_info("Quincy-Qu", "11 inches", "18 lbs")
puts quincy.info

puts quincy.informazione
