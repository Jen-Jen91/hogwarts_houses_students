require_relative("../db/sql_runner.rb")

class Student

  attr_reader :id
  attr_accessor :first_name, :second_name, :house, :age

  def initialize(options)
    @id = options["id"].to_i()
    @first_name = options["first_name"]
    @second_name = options["second_name"]
    @house = options["house"]
    @age = options["age"].to_i()
  end


  def save()
    sql = "INSERT INTO students (first_name, second_name, house, age)
    VALUES ($1, $2, $3, $4)
    RETURNING id;"
    values = [@first_name, @second_name, @house, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data[0]["id"].to_i()
  end


  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM students;"
    student_data = SqlRunner.run(sql)
    students = student_data.map {|student| Student.new(student)}
    return students
  end

  def self.find(id)
    sql = "SELECT * FROM students
    WHERE id = $1"
    student_data = SqlRunner.run(sql, [id])
    student_info = student_data.map {|student| Student.new(student)}
    return student_info
  end

  def pretty_name()
    return "#{@first_name} #{@second_name}"
  end

end
