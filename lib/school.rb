class School
  attr_reader :school
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def roster
    @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_list = {}
    @roster.each do |grade, student_hash|
      sorted_list[grade] = student_hash.sort
    end
    sorted_list
  end
end
