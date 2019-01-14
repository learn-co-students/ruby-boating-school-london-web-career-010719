require 'pry'
require 'bundler/setup'
Bundler.require
require_relative '../app/models/boatingtest.rb'
require_relative '../app/models/instructor.rb'
require_relative '../app/models/student.rb'



parik = Instructor.new("Parik")
Instructor.all

deeva = Student.new("Deeva")
avi = Student.new("Avi")
bunny = Student.new("Bunny")

Student.find("Deeva")

deeva.add_boating_test(deeva, "first_test", "incomplete", parik)
avi.add_boating_test(deeva, "scond_test", "failed", parik)
bunny.add_boating_test(bunny, "scond_test", "complete", parik)



binding.pry
