# 'Student' class:
class Student

  attr_accessor :first_name
  @@all = []

  # should initialize with first_name
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  # Student.all should return all of the student instances
  def self.all
    @@all
  end

  # Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test (test_name, test_status, instructor)
    new_test = BoatingTest.new(self, test_name, test_status, instructor)
    new_test
  end

  #Student.find_student will take in a student first name and output that student (Object)
  def self.find_student (first_name)
    @@all.each {|student| return student if student.first_name == first_name}
  end

  #Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`
  def tests_taken
    BoatingTest.all.select {|test| test.student == self}
  end

  def grade_percentage
    passed_count = tests_taken.select {|test| test.status == "passed"}.count
    failed_count = tests_taken.select {|test| test.status == "failed"}.count
    if (passed_count + failed_count) != 0
      return passed_count.to_f / (passed_count + failed_count)
    else
      return "No tests done so far. Either no test or all pending"
    end
  end

end
