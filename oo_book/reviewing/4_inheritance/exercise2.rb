# Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

class Vehicle
  attr_accessor :speed
  attr_accessor :color, :year, :model

  @@number_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0

    @@number_of_vehicles += 1
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

  def self.total_number_of_vehicles
    "There are #{@@number_of_vehicles} vehicles"
  end
end

class MyCar < Vehicle
  WHEELS = 4
end

class MyTruck < Vehicle
  WHEELS = 18
end

puts Vehicle.total_number_of_vehicles

prius = MyCar.new(2005, "red", "Toyota Prius")
jason = MyTruck.new(1994, "green", "pickup truck")

puts Vehicle.total_number_of_vehicles
