class School
  attr_accessor :school
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end
  
  # this method should arrange the students in each grade by alphabetical order
  def sort
    @roster.each{|grade, subroster| subroster.sort!}
  end

end
