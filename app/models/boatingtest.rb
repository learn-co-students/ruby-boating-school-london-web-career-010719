#'BoatingTest' class
class BoatingTest

  attr_accessor :name, :status, :student, :instructor
  @@all = []

  # should initialize with student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def initialize(student, name, status, instructor)
    @name = name
    @status = status
    @student = student
    @instructor = instructor

    @@all << self
  end

  # BoatingTest.all returns an array of all boating tests
  def self.all
    @@all
  end

end
