# Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. Make sure that all of your previous method calls are working when you are finished.

## They already are in it

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

module ParallelParkable
  def parallel_park
    puts "Parallel parking..."
  end
end

class MyCar < Vehicle
  include ParallelParkable

  WHEELS = 4

  def shut_off
    self.speed = 0
    puts "Shutting car off."
  end
end

class MyTruck < Vehicle
  WHEELS = 18

  def shut_off
    self.speed = 0
    puts "Shutting truck off."
  end
end


puts "----MyTruck ancestors----"
puts MyTruck.ancestors
puts

puts "----MyCar ancestors----"
puts MyCar.ancestors
puts

puts "----Vehicle ancestors----"
puts Vehicle.ancestors
