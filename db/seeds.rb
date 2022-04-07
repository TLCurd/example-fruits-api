10.times do |fruit|
  fruit = Fruit.create(name: Faker::Food.fruits)
end