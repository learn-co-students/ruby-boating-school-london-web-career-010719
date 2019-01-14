class Student

  attr_accessor :first_name, :test_name, :test_status

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(student, test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def my_tests
    BoatingTest.all.select{|test| test.student == self}
  end

def self.find(first_name)
Student.all.select {|student| student.first_name == first_name}
end
# class end
end
