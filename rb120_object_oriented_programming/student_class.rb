class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

bob = Student.new("Bob", 15)
nancy = Student.new("Nancy", 20)
puts "Well done!" if nancy.better_grade_than?(bob)
