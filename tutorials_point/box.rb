class Box
  attr_reader :width, :height

  def initialize(w, h)
    @width, @height = w, h
  end

  def +(other) # define + to do vector addition
    Box.new(@width + other.width, @height + other.height)
  end

  def -@ # Define unary minus to negate width and height
    Box.new(-@width, -@height)
  end

  def -(other)
    to_add = -other
    self + to_add
  end

  def *(scalar)
    Box.new(@width * scalar, @height * scalar)
  end

  def /(scalar)
    Box.new(@width / scalar.to_f, @height / scalar.to_f)
  end

  def same_size?(other)
    #width == other.width && height == other.height
    area == other.area
  end

  def <=>(other)
    perimeter <=> other.perimeter
  end

  def >(other)
    area > other.area
  end

  def <(other)
    area < other.area
  end

  def ==(other)
    width == other.width && height == other.height
  end

  def ===(other)
    object_id == other.object_id
  end

  def area
    width * height
  end

  def perimeter
    2 * (width + height)
  end

  def to_s
    "(width: #{width}, height: #{height})"
  end
end

box1 = Box.new(5, 7)
p box1

box2 = Box.new(8, 10)
p box2

p box1 + box2 # => new box with width 13, height 17
box3 = box1 + box2 + box1

puts box3.width == 18
puts box3.height == 24

p -box1.width == -5
p -box2.height == -10
p -box1

box3 = box2 + -box1
p box3.height == 3
p box3.width == 3

puts "---"
box4 = box2 - box1
puts
puts "box3: #{box3}"
puts "box4: #{box4}"
# p box2 + -box1 == box2 - box1

# 2 boxes of identical size
puts
puts "Box#same_size? #{box4.same_size?(box3)}" # => true
puts "Box#<=> #{box4 <=> box3}" # 0
puts "Box#> #{box4 > box3}" # false
puts "Box#< #{box4 < box3}" # false
puts "Box#== #{box4 == box3}" # true
puts "Box#=== #{box4 === box3}" # false

puts

box5 = Box.new(3, 3)
# 2 box
p box5.same_size?(box3) == true
p (box5 <=> box3) == 0
p box5 > box3 == false
p box5 < box3 == false
p (box5 == box3) == true # b/c same width and height
p (box5 === box3) == false # b/c not same object

box6 = box3.dup

p box6.same_size?(box3) == true
p (box6 <=> box3) == 0
p box6 > box3 == false
p box6 < box3 == false
p (box6 == box3) == true # b/c same width and height
p (box6 === box3) == false # still different objects

box7 = box3.clone

p box7.same_size?(box3) == true
p (box7 <=> box3) == 0
p box7 > box3 == false
p box7 < box3 == false
p (box7 == box3) == true # b/c same width and height
p (box7 === box3) == false # still different objects

box8 = box3

p box8.same_size?(box3) == true
p (box8 <=> box3) == 0
p box8 > box3 == false
p box8 < box3 == false
p (box8 == box3) == true # b/c same width and height
p (box8 === box3) == true # same object

box9 = Box.new(2, 4)

p "Box9"

p box9.same_size?(box3) == false
p (box9 <=> box3) == 0
p box9 > box3 == false
p box9 < box3 == true
p box3 > box9 == true
p box3 < box9 == false
p (box9 == box3) == false
p (box9 === box3) == false

box10 = Box.new(4, 2)
p box10.same_size?(box9) == true
p (box10 <=> box9) == 0
p box10 > box9 == false
p box10 < box9 == false
p box10 > box9 == false
p box10 < box9 == false
p (box9 == box10) == false
p (box9 === box10) == false

# change to perimeter comparison, check box8 again
# back to main exercise

little_box = Box.new(1.5, 2)
big_box = little_box * 3
p big_box.width == 4.5
p big_box.height == 6

p little_box == big_box / 3

new_box = Box.new(10, 80)
smaller_one = new_box / 3

p smaller_one # (width: 3.33333, height: 26.666667)
p smaller_one.height * 3 == new_box.height
p smaller_one.width * 3 == new_box.width
