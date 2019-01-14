class BoatingTest
  attr_accessor :student, :name, :status, :instructor

  @@all = []

  def self.all
    @@all
  end

  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor

    self.class.all << self
  end

end
