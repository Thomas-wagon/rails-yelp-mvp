# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
satay_brothers = { name: "Satay Brothers", address: "3721 Rue Notre-Dame Ouest, Montréal, QC H4C 1P8", phone_number: "(514) 933-3507", category: "japanese" }
street_monkeys =  { name: "Street Monkeys", address: "3625 Rue Wellington, Verdun, QC H4G 1T9", phone_number: "(514) 768-1818", category: "chinese" }
foiegwa =  { name: "Foiegwa", address: "3001 Rue Notre-Dame Ouest, Montréal, QC H4C 1N9", phone_number: "(438) 387-4252", category: "french" }
onoir =  { name: "O.Noir", address: "124 Rue Prince Arthur East, Montreal, Quebec H2X 1B5", phone_number: "(514) 937-9727", category: "belgian" }
ff_pizza =  { name: "F+F Pizza", address: "4400 Rue Notre-Dame Ouest, Montréal, QC H4C 1S1", phone_number: "(514) 508-0808", category: "italian" }

[ satay_brothers, street_monkeys, foiegwa, onoir, ff_pizza ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"