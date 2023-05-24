# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

bristol = { name: "Epicure", category: Restaurant::CATEGORIES.sample, address: "75008 Paris", phone_number: "07 58 78 96 99" }
surpriz = { name: "Surpriz", category: Restaurant::CATEGORIES.sample, address: "16 rue du kebab, 75011 Paris", phone_number: "06 57 82 48 67" }
bouillon = { name: "Bouillon Chartier", category: Restaurant::CATEGORIES.sample, address: "15 rue bonne nouvelle, 75009 Paris", phone_number: "06 48 75 88 02" }
macdo = { name: "Mcdonald", category: Restaurant::CATEGORIES.sample, address: "15 rue de la porcherie", phone_number: "07 00 00 00 00" }
kfc = { name: "KFC", category: Restaurant::CATEGORIES.sample, address: "80 rue du poulet", phone_number: "+33 6 04 75 82 22" }

[bristol, surpriz, bouillon, macdo, kfc].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
