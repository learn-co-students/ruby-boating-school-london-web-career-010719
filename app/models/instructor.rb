class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_tests
    BoatingTest.all.select do |test|
      test.instructor == self
    end
  end

  def pass_student(student, test_name, test_status="passed")
        if my_tests.include?(Student.name == student && BoatingTest.name == test_name)
        test_name.test_status = "passed"
        return test
      else
        BoatingTest.new(student, test_name, test_status, self)
      end
  end

  def fail_student
    def pass_student(student, test_name, test_status="failed")
          if my_tests.include?(Student.name == student && BoatingTest.name == test_name)
          test_name.test_status = "failed"
          return test
        else
          BoatingTest.new(student, test_name, test_status, self)
        end
    end




end
