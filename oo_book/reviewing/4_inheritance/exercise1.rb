# Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way.

class Vehicle
  attr_accessor :speed
  attr_accessor :color, :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(amount)
    self.speed += amount
    puts "Speeding up...speed is now #{speed}."
  end

  def brake(amount)
    self.speed -= amount
    puts "Braking...speed is now #{speed}."
  end

  def shut_off
    self.speed = 0
    puts "Shutting car off."
  end

  def spray_paint(color)
    self.color = color
  end

  def self.gas_mileage(miles, gallons)
    miles.to_f / gallons
  end

  def to_s
    "A #{color} #{year} #{model}"
  end
end

class MyCar < Vehicle
  WHEELS = 4
end

class MyTruck < Vehicle
  WHEELS = 18
end

prius = MyCar.new(2005, "red", "Toyota Prius")
puts prius
prius.speed_up(20)
prius.brake(10)
prius.shut_off
puts MyCar::WHEELS

jason = MyTruck.new(1994, "green", "pickup truck")
puts jason
prius.speed_up(20)
prius.brake(10)
prius.shut_off
puts MyTruck::WHEELS
