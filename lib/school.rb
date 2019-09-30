# code here!
class School
  attr_accessor :roster
  def initialize(name = "Bayside High School")
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
      @roster[key]
    end
  end
  
end