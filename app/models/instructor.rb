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

  def pass_student(student, test_name)
    BoatingTest.all.each do |test_instance|
      if test_instance.test_name == test_name
        test_instance.test_status = "passed" if test_instance.student == student
        return test_instance
      end
    end
      BoatingTest.new(student, test_name, "passed", self)
  end

  def fail_student(student, test_name)
    BoatingTest.all.each do |test_instance|
      if test_instance.test_name == test_name
        test_instance.test_status = "failed" if test_instance.student == student
        return test_instance
      end
    end
    BoatingTest.new(student, test_name, "failed", self)
  end

end
