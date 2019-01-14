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
    BoatingTest.all.select{|test| test.instructor == self}
  end

  def pass_student(student_name, test_name)
    student = Student.find_student(student_name)
    my_tests.each do |test|
      if test.test_name == test_name && student.first_name == student_name
        test.status=("complete")
      else
        student.add_boating_test(test_name, self, "complete")
      end
    end
  end


  def fail_student(student_name, test_name)
    student = Student.find_student(student_name)
    my_tests.each do |test|
      if test.test_name == test_name && student.first_name == student_name
        test.status=("failed")
      else
        student.add_boating_test(test_name, self, "failed")
      end
    end
  end

end
