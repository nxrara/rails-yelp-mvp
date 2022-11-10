# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."

category_array = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
	restaurant = Restaurant.new(
		name: Faker::Restaurant.name,
		address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_array.shuffle.first
	)
  restaurant.save!
  puts "Created #{restaurant.name}"
end

# dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5}
# pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}

# [dishoom, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"
