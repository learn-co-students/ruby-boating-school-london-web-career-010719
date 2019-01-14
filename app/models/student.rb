class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, instructor, status="incomplete")
    BoatingTest.new(test_name, self, instructor, status)
  end

  def self.find_student(name)
    self.all.select {|student| student.first_name == name}
  end

end
