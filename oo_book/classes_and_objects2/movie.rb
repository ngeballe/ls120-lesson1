class Movie
  @@number_of_movies = 0

  attr_accessor :title, :star, :year

  def initialize(title, star, year)
    self.title = title
    self.star = star
    self.year = year

    @@number_of_movies += 1
  end

  def to_s
    "#{title}, starring #{star} (#{year})"
  end

  def self.number_of_movies=(new_number)
    @@number_of_movies = new_number
  end

  def self.number_of_movies
    @@number_of_movies
  end

  def self.fake_number_of_movies=(new_number)
    self.number_of_movies=(new_number)
  end
end

big_lebowski = Movie.new("The Big Lebowski", "Jeff Bridges", 1997)
puts big_lebowski
p big_lebowski
# correction: 1998

big_lebowski.year = 1998

puts big_lebowski
p big_lebowski

p Movie.number_of_movies

Movie.fake_number_of_movies=(99)

p Movie.number_of_movies
