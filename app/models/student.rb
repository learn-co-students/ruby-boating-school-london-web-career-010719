class Student
  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name

    self.class.all << self
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def boating_tests
    BoatingTest.all.select {|boating_test| boating_test.student == self}
  end

  def grade_percentage
    num_passed = 0
    num_failed = 0
    boating_tests.each do |test|
      num_passed += 1 if test.status == "passed"
      num_failed += 1 if test.status == "failed"
    end
    num_passed = num_passed.to_f / (num_passed.to_f + num_failed.to_f)
  end

  def self.all
    @@all
  end

  def self.find_student(first_name)
    all.find {|student| student.first_name == first_name}
  end
end
