require_relative("../db/sql_runner")

class House

  attr_reader :id
  attr_accessor :name, :logo

  def initialize(options)
    @id = options["id"].to_i()
    @name = options["name"]
    @logo = options["logo"]
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def save()
    sql = "INSERT INTO houses (name, logo)
    VALUES ($1, $2)
    RETURNING id;"
    values = [@name, @logo]
    house_data = SqlRunner.run(sql, values)
    @id = house_data[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    house_data = SqlRunner.run(sql)
    houses = house_data.map { |house| House.new(house) }
    return houses
  end

  def self.find(id)
    sql = "SELECT * FROM houses
    WHERE id = $1"
    house_data = SqlRunner.run(sql, [id])
    house_info = house_data.map { |house| House.new(house) }
    return house_info
  end

end
