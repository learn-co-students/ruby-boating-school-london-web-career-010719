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

  def tests
    BoatingTest.all.select {|test| test.instructor == self}
  end

  def pass_student(student_name, test_name)
    existing_test = BoatingTest.all.find{|test| test.student.name == student_name && test.test_name == test_name}
    if existing_test
      existing_test.each {|test| test.status=("complete")}
    else
      Student.find_student(student_name).add_boating_test(test_name, self, "complete")
    end
  end

end
