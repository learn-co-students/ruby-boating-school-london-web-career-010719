
class Instructor

  attr_accessor :name
  @@all = []

  # init with name
  def initialize (name)
    @name = name
    @@all << self
  end

  # return all instructors
  def self.all
    @@all
  end

  # Instructor#pass_student should take in a student name and test name.
  # If there is a BoatingTest whose name and student name match the names passed in,
  # this method should update that BoatingTest status to 'passed'.
  # If there is no matching test, this method should create a test with a student with that name,
  # that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
  def pass_student (student_name, test_name)
    test_to_change = BoatingTest.all.select {|test|
      test.name == test_name &&
      test.student.first_name == student_name &&
      test.instructor == self
    }

    if test_to_change[0] == nil
      test_to_change << BoatingTest.new(Student.find_student(student_name),test_name, "passed", self)
    else
      test_to_change[0].status = "passed"
    end
    test_to_change
  end

  # Instructor#fail_student should take in a student name and test name.
  #Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'.
  #If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.

  def fail_student (student_name,test_name)
    test_to_change = BoatingTest.all.select {|test|
      test.name == test_name &&
      test.student.first_name == student_name &&
      test.instructor == self
    }

    if test_to_change[0] == nil
      test_to_change << BoatingTest.new(Student.find_student(student_name),test_name, "failed", self)
    else
      test_to_change[0].status = "failed"
    end
    test_to_change
  end

end
