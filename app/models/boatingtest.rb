class BoatingTest

  attr_accessor :student, :instructor, :test_name, :test_status
  @@all = []

  def initialize(student, test_name, test_status, instrutor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instrutor = instrutor
    @@all << self
  end

  def self.all
    @@all
  end

end
