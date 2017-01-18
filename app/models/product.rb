class Product < ApplicationRecord
	has_many :markets
	has_many :sellers, through: :markets

	def self.search(search)
  		where("name LIKE ?", "%#{search}%") 
	end
end
