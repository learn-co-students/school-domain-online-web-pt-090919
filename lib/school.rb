class School
  
  attr_reader :name, :roster
  # not using accessor because doesn't want roster to be overwritten
  # just reader because you don'others
  def initialize(name)
    @name = name
    @roster = {} #initally set to empty collector
    # Option 3a
    # roster = Hash.new {|h,k| h[k] = []}
  end
  
  def add_student(name, grade)
    #e.g.{"10" => ["Genetian"]}
    #add multiple students to a class (grade)
    if  @roster.has_key?(grade)
      @roster[grade] << name
    else
      #add a student
      @roster[grade] = [name]
    end
    
    # Option 2
    ## self.roster ||= []
    # if self.roster[grade] already exists, leave it alone!
    ## else set self.roster[grade] = []
    #self.roster[grade] << name
    
    # Option 3b
    ## self.roster[grade] << name
  end
  
  def grade(grade) # retrieve students from a grade 
    # roster_hash = self.roster
    # roster_hash[grade]
    self.roster[grade]
    # @roster[grade]
  end
  
  def sort #sort students
    # students in each respective value in alphabetical order
    self.roster.collect do |grade, students|
        students.sort
    end
  end  
  
 end