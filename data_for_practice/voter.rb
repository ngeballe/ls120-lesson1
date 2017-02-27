class Voter
  @@count = 0
  @@voters = []

  attr_reader :name, :age, :gender, :city, :party

  def initialize(name, age, gender, city, party)
    @name, @age, @gender, @city, @party = name, age, gender, city, party
    @@count += 1
    @@voters << self
  end

  def to_s
    "#{@name}, age #{@age}, a #{@gender.downcase} #{@party} from #{@city}"
  end

  def self.count
    @@count
  end

  def self.all
    @@voters
  end

  def <=>(other)
    age <=> other.age
  end
end
