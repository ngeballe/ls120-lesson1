class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
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
end

chuck = MyCar.new("1994", "red", "Toyota Camry")
chuck.current_speed

chuck.speed_up(10)

chuck.current_speed

chuck.speed_up(90)

chuck.current_speed

chuck.brake(40)

chuck.current_speed

chuck.shut_off

chuck.current_speed

puts chuck.color
chuck.color = "yellow"
puts chuck.color
puts "Chuck is from #{chuck.year}"

chuck.spray_paint("lavender")
puts chuck.color
