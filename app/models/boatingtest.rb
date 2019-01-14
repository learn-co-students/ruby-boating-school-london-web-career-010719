class BoatingTest

  attr_accessor :test_name, :student, :instructor, :status

  @@all = []

  def initialize(test_name, student, instructor, status)
    @test_name = test_name
    @student = student
    @instructor = instructor
    @status = status
    @@all << self
  end

  def self.all
    @@all
  end

end
