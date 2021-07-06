class Instructor

    @@all = []

    def self.all
      @@all
    end

    attr_accessor :first_name

    def initialize(name)
      @first_name = name
      @@all << self
    end

    def instructors_tests
      BoatingTest.all.select do |boating_test|
        boating_test.instructor == self
      end
    end

#If there is a BoatingTest whose name and student name match the names passed in, this method should update that BoatingTest status to 'passed'.
    def pass_student(student_name, test)
      instructors_tests.map do |boating_test|
        if boating_test.student == student_name && boating_test == test
          boating_test.test_status = "passed"
          return boating_test
        else
          new_test = BoatingTest.new(student_name, test.test_name, "passed", self)
          return new_test
        end
      end
    end

  def fail_student(student_name, test)
    instructors_tests.map do |boating_test|
      if boating_test.student == student_name && boating_test == test
        boating_test.test_status = "failed"
        return boating_test
      else
        new_test = BoatingTest.new(student_name, test.test_name, "failed", self)
        return new_test
      end
    end
  end


end
