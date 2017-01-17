class Product < ApplicationRecord
	has_many :markets
	has_many :sellers, through: :markets

	def self.search(search)
  		where("name LIKE ? OR PLU LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	end
end
