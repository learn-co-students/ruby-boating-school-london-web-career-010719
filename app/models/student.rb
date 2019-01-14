class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(name)
    all.select {|student|
      student.name == name.capitalize}
  end

  def tests_taken
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def grade_percentage
    i = tests_taken.select { |test|
      test.test_status == "passed"}.length.to_f/tests_taken.length.to_f
      i*100
  end

end
