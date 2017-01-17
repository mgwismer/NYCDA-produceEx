class Product < ApplicationRecord
	has_many :sellers, through: :markets

	def self.search(search)
  where("name LIKE ? OR plu LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
	end
end
