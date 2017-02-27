module Text
  def read
    puts "This is the text"
  end
end

class Book
  include Text
end

bible = Book.new
p bible

p bible.read

p Book.ancestors
