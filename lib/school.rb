# code here!

class School
  
  def initialize(model)
    @school = model
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each { |grade, students| students.sort! }
  end
  
end