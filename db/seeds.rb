# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#following codes removes duplicate names from the PLU database
plu = PLU.all

plu.each do |key, value|
	value.slice!('Large')
	value.slice!('Medium')
	value.slice!('Small')
	value.slice!('Mini')
	value.slice!('Retailer')
	value.slice!('Extra Large')
	value.slice!('Assigned')
	value.slice!('Regular')
	value.slice!('Flat')
	value.lstrip!
end


another_plu = plu.to_a
this_plu_again = another_plu.uniq {|l|[l[1]]}
this_plu_again.to_h

this_plu_again.each do |key, value|
	Product.create(name: value, PLU: key, category: 'fruit', organic: false)
end