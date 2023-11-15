# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
zeughauskeller = {name: "Zeughauskeller", address: "Bahnhofstrasse 28A, 8001 Zürich", category: "japanese"}
restaurant_kiosk = {name: "Restaurant Kiosk", address: "Seefeldquai 51, 8008 Zürich", category: "french"}
iroquois = {name: "IROQUOIS", address: "Seefeldstrasse 120, 8008 Zürich", category: "belgian"}

[dishoom, pizza_east, zeughauskeller, restaurant_kiosk, iroquois].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
