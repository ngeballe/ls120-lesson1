class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = name
  end

  # # def get_name
  # def name
  #   @name
  # end

  # # def set_name=(name)
  # def name=(n)
  #   @name = n
  # end

  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w)
    @name = n
    @height = h
    @weight = w
  end
end

quincy_q = GoodDog.new("Quincy")
p quincy_q
quincy_q.change_info("Quincy-Qu", 0.2, 30)
p quincy_q
