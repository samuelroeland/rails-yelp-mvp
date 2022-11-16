require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Destroying all restaurants"
Restaurant.destroy_all

puts "Creating 5 new restaurants"
5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: CATEGORY.sample
  )
  puts "Created restaurant with id #{restaurant.id}"
end


puts "Finished"




# t.string "name"
# t.string "address"
# t.string "phone_number"
# t.string "category"
