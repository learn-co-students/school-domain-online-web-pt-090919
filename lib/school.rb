# code here!
class School
  
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.key?(grade) == false
      @roster[grade] = []
      @roster[grade].push(name)
    else
      @roster[grade].push(name)
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |key, student_array|
      @roster[key] = student_array.sort
    end
  end
  
end