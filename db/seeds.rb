# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


plu = PLU.all
arr_plu = plu.to_a
no_dupes_arr = arr_plu.uniq {|l|[l[1]]}
new_plu = no_dupes_arr.to_h

new_plu.each do |key, value|
	Product.create(name: value, PLU: key, category: 'fruit', organic: false)
end

