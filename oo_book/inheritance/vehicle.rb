module Maneuverable
end

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@num_vehicles = 0

  attr_accessor :color
  attr_reader :year, :model

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@num_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You step on the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_off
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons } miles per gallon of gas"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  def self.num_vehicles
    puts "There are #{@@num_vehicles} vehicles on the road."
  end

  private

  def years_old
    Time.now.year - year
  end
end

class MyCar < Vehicle
  include Maneuverable

  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color} #{year} #{model}!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{color} #{year} #{model}!"
  end
end

van = MyCar.new(1999, "Ford Windstar", "light blue")

# puts van
# van.speed_up(10)
# van.speed_up(10)
# van.current_speed
# van.brake(10)
# van.current_speed
# van.shut_off
# van.current_speed
# puts MyCar::NUMBER_OF_DOORS
# puts MyTruck::NUMBER_OF_DOORS

# Vehicle.num_vehicles

# # MyCar.gas_mileage(20, 370.0)

# puts

# truck = MyTruck.new(1978, "Mac Truck", "red")
# puts truck

# Vehicle.num_vehicles

puts "___MyCar ancestors___"
puts MyCar.ancestors

puts

puts "___MyTruck ancestors___"
puts MyTruck.ancestors

puts

puts "__Vehicle ancestors___"
puts Vehicle.ancestors

avalon = MyCar.new(1999, "Toyota Avalon", "white")
puts avalon.age
# puts avalon.years_old
