# code here!
class School
  
  def initialize(students_name)
    @school_name = students_name
    @roster = {}
  end
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @add_student = name
    @add_student = grade
    
    if @roster.include?(grade) == false
       @roster[grade] = []
       end
       @roster[grade] << name
  end
    
  def grade(num)
      @roster[num]
  end


  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end
end

