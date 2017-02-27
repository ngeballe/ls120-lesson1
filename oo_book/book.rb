class Book
  # attr_accessor :title, :author, :pages

  # def initialize(title, author, pages)
  #   @title = title
  #   @author = author
  #   @pages = pages
  # end

  # def info
  #   puts "#{title}, by #{author} (#{pages} pgs)"
  # end

  # def update_info(title, author, pages)
  #   self.title = title
  #   self.author = author
  #   self.pages = pages
  # end

  def self.what_am_i
    "I'm a Book class"
  end
end

puts Book.what_am_i

# purity = Book.new("Purity", "Jonathan Franzen", 417)
# purity.info
# puts purity.title

# purity.update_info("Impurity", "Jonathan Frazzled", 714)
# purity.info
