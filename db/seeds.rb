# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['Shoes', 'Pants', 'Top', 'T-Shirt', 'Jewelry', 'Socks', 'Houseware'].each do |name|
  ProductType.create(name: name)
end

vendors = [
  ['Clay', 'Beabout', '316-205-3333', 'beabout@gmail.com', 'Beabout Clothes'],
  ['Lauren', 'Beabout', '316-232-5232', 'lauren@gmail.com', "Clothes From Lo"],
  ['Bob', 'Dylan', '523-523-5231', 'bobby@gmail.com', "Dylans Earrings"],
]

vendors.each{ |vendor| Vendor.create(first_name: vendor[0], last_name: vendor[1], phone_number: vendor[2], email: vendor[3], company_name: vendor[4]) }

# name, cost, description, size 
products = [
  ['White Jeans', '12.00', 'The jeans are white and bleached', 'S'], 
  ['Jumpsuit', '12.00', 'Brown Jumpsuit with cool stuff on sides', 'S'], 
]

Vendor.all.each do |vendor|
  products.each do |product|
    vendor.products.create!(name: product[0], cost: product[1] , description: product[2], size: product[3], product_type_id: ProductType.first.id)
  end
end