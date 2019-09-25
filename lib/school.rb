# code here!
require "pry"
class School
  attr_reader :school_name, :roster 
  def initialize(school_name)
    @school_name = school_name
    @roster = {} 
  end 
  
  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else 
      @roster[grade] = [student]
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.each do |grade, students|
      @roster[grade] = students.sort 
    end 
  end 
  
end 