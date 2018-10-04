require_relative("../models/student.rb")

Student.delete_all()

student1 = Student.new({
  "first_name" => "Katie",
  "second_name" => "Jeffree",
  "house" => "Ravenclaw",
  "age" => 25
})

student2 = Student.new({
  "first_name" => "Jen",
  "second_name" => "Proctor",
  "house" => "Slytherin",
  "age" => 27
})

student1.save()
student2.save()
