require 'pry'

class World
  attr_accessor :player_x_position, :player_y_position

  def initialize(width, height)
    @width, @height = width, height
    @player_x_position = 0
    @player_y_position = 0
  end

  def display
    system 'clear'
    puts "-" * @width
    (8 - self.player_y_position).times { puts }
    puts "#{' ' * player_x_position} o "
    puts "#{' ' * player_x_position}-+- "
    puts "#{' ' * player_x_position} | "
    puts "#{' ' * player_x_position}/ \\"
    (8 + self.player_y_position).times { puts }
    puts "-" * @width
  end
end

# initialize board

world = World.new(80, 20)

loop do
  world.display
  input = gets.chomp
  if input =~ /(\e\[C)+/
    world.player_x_position += input.count("\e")
  elsif input =~ /(\e\[D)+/
    world.player_x_position -= input.count("\e")
  elsif input =~ /(\e\[A)+/
    world.player_y_position += input.count("\e")
  elsif input =~ /(\e\[B)+/
    world.player_y_position -= input.count("\e")
  else
    p input
  end
end

