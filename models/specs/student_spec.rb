require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")


class TestStudent < MiniTest::Test

  def setup()
    options = {
    "id" => 1,
    "first_name" => "Harry",
    "second_name" => "Potter",
    "house" => "Gryffindor",
    "age" => 18
    }
    @student1 = Student.new(options)
  end

  def test_pretty_name()
    assert_equal("Harry Potter", @student1.pretty_name())
  end











end
