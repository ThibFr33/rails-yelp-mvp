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

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Chez Najoua", address: "25 cours du Médoc, 33300 Bordeaux", category: "french")
puts "Chez Najoua"
Restaurant.create!(name: "Jojo La Frite", address: " 40 allée de la batterie, 33650 Ayguemorte-les-Graves", category: "belgian")
puts "Jojo La Frite"
Restaurant.create!(name: "Au Tokyo", address: "7 place de la Bastide. 75000 Paris", category: "japanese")
puts "Au Tokyo"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."

