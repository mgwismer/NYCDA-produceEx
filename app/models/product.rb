class Product < ApplicationRecord
	has_many :sellers, through: :markets
end
