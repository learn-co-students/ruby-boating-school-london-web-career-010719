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
  BoatingTest.all.select {|test| test.instructor == self}
end

# def pass_tests
#   my_tests.each {|test| test.test_status=("complete") if test.test_status == "incomplete"}
# end

def pass_test(name)
  my_tests.each {|test| test.test_status=("passed") if test.test_status == "failed" && test.student == name}
end

def fail_test(name)
  my_tests.each {|test| test.test_status=("failed") if test.test_status == "passed" || test.test_status == "incomplete "&& test.student == name}
end

# def pass_student(student_name, test_name)
#   names = BoatingTest.all.collect {|test| test.student.first_name}
#   if names.include?(student_name)
#
# end
# end



def pass_student(name)
BoatingTest.all.select {|test| test.instructor == self}
end





# class end
end
