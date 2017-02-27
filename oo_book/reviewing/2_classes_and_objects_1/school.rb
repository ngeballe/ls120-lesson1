class School
  attr_accessor :name, :size

  def cheer
    @name.each_char do |char|
      next unless char =~ /\w/
      char = char.upcase
      puts "Give me a #{char}!"
      puts "#{char}!"
    end
    puts "GOOOOOOOO #{name.upcase}!"
  end
end

westside = School.new
westside.name = "West Side"
p westside.name
westside.cheer
