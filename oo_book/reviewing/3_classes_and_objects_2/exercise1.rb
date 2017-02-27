# Add a class method to your MyCar class that calculates the gas mileage of any car.

class MyCar
  attr_accessor :speed
  attr_accessor :color
  attr_reader :year

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
end

puts "#{MyCar.gas_mileage(1000, 20)} mpg"



