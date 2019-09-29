# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, level)
    roster[level] ||= []
    roster[level] << student
    
  end
  
  def grade(level)
      roster.select do |levela, student|
        if levela == level
          return student
        end
      end
      
    end
  
  
  def sort
    new_hash = {}
    roster.each do |level, student|
      new_hash[level] = student.sort
    end
    new_hash
  end
    
  
  
end