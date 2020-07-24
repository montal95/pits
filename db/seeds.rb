# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plant.destroy_all
User.destroy_all
Greenhouse.destroy_all

20.times {
        user = User.create(name: Faker::FunnyName.two_word_name, age: Faker::Number.within(range: 8..80), occupation: Faker::Lorem.word)
        plant = Plant.create(name: Faker::FunnyName.name, species: Faker::Lorem.sentence(word_count: 2), watering_gap: Faker::Number.within(range: 4..30), optimal_humidity: Faker::Number.within(range: 40..60))
        Greenhouse.create(plant: plant, user: user)
}