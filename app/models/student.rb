class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instrutor)
    BoatingTest.new(self, test_name, test_status, instrutor)
  end

  def self.find_student(first_name)
    @@all.detect do |student_instance|
      student_instance.first_name == first_name
    end
  end

  def grade_percentage
    passed_tests = []
    all_tests = []
    BoatingTest.all.each do |test_instance|
      all_tests << test_instance if test_instance.student == self
      passed_tests << test_instance if test_instance.student == self && test_instance.test_status == "passed"
    end
    (passed_tests.length.to_f / all_tests.length.to_f).round(2)
  end

end
