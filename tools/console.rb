require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Joey")
student2 = Student.new("Darcey")
student3 = Student.new("Jasmine")

instructor1 = Instructor.new("John")
instructor2 = Instructor.new("Dan")
instructor3 = Instructor.new("Bob")

test1 = BoatingTest.new("Boating 101", student1, instructor1, "incomplete")
test2 = BoatingTest.new("Boating 102", student1, instructor1, "incomplete")
test3 = BoatingTest.new("Boating 103", student1, instructor1, "incomplete")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
