#require 'pry'
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
   if roster.has_key?(grade) == false
      roster[grade] = []
      roster[grade] << name
   else
      roster[grade] << name
   end
  roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each_pair do |key, value|
    roster[key] = value.sort
    end
  end
end
