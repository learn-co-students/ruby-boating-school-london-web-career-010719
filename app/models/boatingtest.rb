class BoatingTest

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :student, :test_name, :test_status, :instructor

  def initialize(student, test_name, test_status, instructor="Unknown")
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @@all << self
  end
end
