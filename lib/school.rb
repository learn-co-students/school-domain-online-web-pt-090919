class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new {|a,b| a[b] = []}
  end
  
  def add_student(name,grade)
    self.roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort 
    self.roster.each do |grade, students|
      students.sort!
    end
  end

end