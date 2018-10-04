require("sinatra")
require("sinatra/contrib/all")
require_relative("./models/student.rb")
also_reload('./models/*')

get("/students") do
  @students = Student.all()
  erb(:index)
end
