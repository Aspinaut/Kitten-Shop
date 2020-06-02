# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  Item.create!(
    title: Faker::Creature::Cat.name,
    description: Faker::Creature::Cat.breed,
    price: '%.2f' % rand(1.00..50.00).to_d,
    image_url:
      "https://placekitten.com/#{rand(100..400)}/#{rand(100..400)}"
  )
end

puts "Seed generated."
