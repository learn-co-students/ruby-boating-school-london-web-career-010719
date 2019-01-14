class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, instructor, status="incomplete")
    BoatingTest.new(test_name, self, instructor, status)
  end

  def self.find_student(name)
    self.all.find {|student| student.first_name == name}
  end

  def tests
    BoatingTest.all.select {|test| test.student = self}
  end

  def grade_percentage
    passed_tests = self.tests.select{|test| test.status == "complete"}.length.to_f
    passed_tests/ self.tests.length.to_f
  end

end
