# code here!
require 'pry'
class School
  
  attr_accessor :name, :roster, :add_student, :grade
  attr_reader :add_student
    
  def initialize(name)
    @name = name
    @roster = {}
  end
 
  def add_student(name, grade)
      names = []
      names << name
      if @roster[grade] != nil
        counter = 1
        @roster[grade][counter] = name
      else
        @roster[grade] = names
      end
    end
    
  def grade(grade)
    if @roster.keys.include?(grade)
      @roster[grade]
  end
end
    
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    #binding.pry
        end
  end
    
end
  
