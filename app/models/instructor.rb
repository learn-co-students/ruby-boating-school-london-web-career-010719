class Instructor
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def find_test(student_name, test_name)
    BoatingTest.all.find {|test| test.student.first_name == student_name && test.name == test_name}
  end

  def change_test_status (student_name, test_name, new_status)
      matched_test = find_test(student_name, test_name)

      if matched_test
        matched_test.status = new_status
      else
        student = Student.find_student(student_name)
        matched_test = BoatingTest.new(student, test_name, new_status, self)
      end
      matched_test
  end

  def pass_student (student_name, test_name)
    change_test_status(student_name, test_name, "passed")
  end

  def fail_student (student_name, test_name)
    change_test_status(student_name, test_name, "failed")
  end

end
