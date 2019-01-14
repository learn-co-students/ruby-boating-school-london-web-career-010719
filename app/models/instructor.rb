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

  def pass_student(student_name, test_name)
    student = Student.find_student(student_name)
    BoatingTest.all.each do |test|
      if test.test_name == test_name && student.first_name == student_name
        test.status=("complete")
      else
        student.add_boating_test(test_name, self, "complete") 
      end
    end
  end

end
