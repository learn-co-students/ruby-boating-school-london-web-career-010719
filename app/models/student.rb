class Student

@@all = []

def self.all
  @@all
end

attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    all.select do |student|
      student.first_name = first_name
    end
  end

  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end
  #return the percentage of tests that the student has passed
  # should be a float
  def grade_percentage
    #get tests for that student
    passed_test_counter = []
    tests.select do |test|
      if test.test_status == "passed"
        passed_test_counter << test
      end
    end
    percentage = 0.0
    percentage = passed_test_counter.count.to_f / tests.count.to_f
  end
end
