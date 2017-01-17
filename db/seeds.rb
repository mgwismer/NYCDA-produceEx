# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




PLU.all.each do |key, value|
	Product.create(name: value, PLU: key, category: 'fruit', organic: false)
end

PLU.all.each do |key, value|
	Product.create(name: 'Organic ' + value, PLU: key, category: 'fruit', organic: true)
end