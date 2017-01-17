# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.create ([{ name: 'Bananas', PLU: '4011', category: 'Fruit', organic: false}])
Product.create ([{ name: 'Broccoli', PLU: '4060', category: 'Vegetable', organic: false}])
Product.create ([{ name: 'Carrots', PLU: '4094', category: 'Vegetable', organic: false}])
Product.create ([{ name: 'Strawberries', PLU: '4246', category: 'Fruit', organic: false}])
Product.create ([{ name: 'Kale', PLU: '4627', category: 'Vegetable', organic: true}])
