require_relative("../models/student.rb")
require_relative("../models/house.rb")
require('pry')

Student.delete_all()
House.delete_all()

gryffindor = House.new({
  "name" => "Gryffindor",
  "logo" => "https://images.pottermore.com/bxd3o8b291gf/49zkCzoZlekCmSq6OsycAm/da6278c1af372f18f8b6a71b226e0814/PM_House_Pages_400_x_400_px_FINAL_CREST2.png?w=550&h=550&fit=thumb&f=center&q=85"
})

ravenclaw = House.new({
  "name" => "Ravenclaw",
  "logo" => "https://images.pottermore.com/bxd3o8b291gf/5pnnQ5puTuywEEW06w2gSg/91abff3d923b4785ed79e9abda07bd07/PM_House_Pages_400_x_400_px_FINAL_CREST.png?w=550&h=550&fit=thumb&f=center&q=85"
})

slytherin = House.new({
  "name" => "Slytherin",
  "logo" => "https://images.pottermore.com/bxd3o8b291gf/4U98maPA5aEUWcO8uOisOq/e01e17cc414b960380acbf8ace1dc1d5/PM_House_Pages_400_x_400_px_FINAL_CREST4.png?w=550&h=550&fit=thumb&f=center&q=85"
})

hufflepuff = House.new({
  "name" => "Hufflepuff",
  "logo" => "https://images.pottermore.com/bxd3o8b291gf/2GyJvxXe40kkkG0suuqUkw/e1a64ec404cf5f19afe9053b9d375230/PM_House_Pages_400_x_400_px_FINAL_CREST3.png?w=550&h=550&fit=thumb&f=center&q=85"
})

gryffindor.save()
ravenclaw.save()
slytherin.save()
hufflepuff.save()


student1 = Student.new({
  "first_name" => "Luna",
  "second_name" => "Lovegood",
  "house_id" => ravenclaw.id,
  "age" => 11
})

student2 = Student.new({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "house_id" => slytherin.id,
  "age" => 12
})

student1.save()
student2.save()

binding.pry
nil
