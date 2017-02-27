# Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.

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

  def age
    current_year - year
  end

  def self.total_number_of_vehicles
    "There are #{@@number_of_vehicles} vehicles"
  end

  private

  def current_year
    Time.now.year
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

avalon = MyCar.new(1997, 'white', 'Toyota Avalon')
puts avalon.age


