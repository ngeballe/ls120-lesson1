class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    return grade < other_student.grade if grade[0] != other_student.grade[0]
    # same letter
    grade.end_with?("+") && !other_student.grade.end_with?("+") ||
    grade.length == 1 && other_student.grade.end_with?("-")
  end

  protected
  
  def grade
    @grade
  end
end

sue = Student.new("Sue", "A")
sally = Student.new("Sally", "B")

p sue.name
p sally.name

p sue.class
p sally.class

puts "Well done!" if sue.better_grade_than?(sally)

p Student.new("Tom", "C+").better_grade_than?(Student.new("Sarah", "C")) == true
p Student.new("Tom", "C+").better_grade_than?(Student.new("Sarah", "B")) == false
p Student.new("Tom", "C+").better_grade_than?(Student.new("Sarah", "C+")) == false
p Student.new("Tom", "A-").better_grade_than?(Student.new("Sarah", "C+")) == true
p Student.new("Tom", "B+").better_grade_than?(Student.new("Sarah", "A-")) == false
p Student.new("Tom", "C+").better_grade_than?(Student.new("Sarah", "C")) == true
p Student.new("Tom", "C-").better_grade_than?(Student.new("Sarah", "C")) == false
p Student.new("Tom", "C").better_grade_than?(Student.new("Sarah", "C+")) == false

