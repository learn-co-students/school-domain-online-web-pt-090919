class School
  @school = School.new("Bayside High School")
end 

def roster
 @school = School.add_student("AC Slater", 9)
 
 @school = School.add_student("Kelly Kapowski", 10)
 
 @school = School.add_student("Screech", 11)
 
 @school = School.roster

end