# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: 'London E2 7JE', phone_number: '02 40 34 65 49', category: 'chinese' }
pizza = { name: 'Pizza', address: 'London E1 6PQ', phone_number: '02 40 45 69 54', category: 'italian' }
kashfull = { name: 'Kashfull', address: 'Nantes', phone_number: '02 40 34 65 69', category: 'italian' }
piratery = { name: 'Piratery', address: 'Atlantique', phone_number: '02 40 18 22 75', category: 'belgian' }
merdium = { name: 'Merdium', address: 'Chiottes', phone_number: '02 40 11 66 77', category: 'chinese' }
jenaimarre = { name: 'Jenaimarr', address: 'Japudinspi', phone_number: '02 40 23 69 57', category: 'french' }

[dishoom, pizza, kashfull, piratery, merdium, jenaimarre].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
