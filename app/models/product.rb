class Product < ApplicationRecord
	has_many :markets
	has_many :buyerproducts
	has_many :sellers, through: :markets
    has_many :buyers, through: :buyerproducts
	def self.search(search)
  		where("name LIKE ?", "%#{search}%") 
	end
end
