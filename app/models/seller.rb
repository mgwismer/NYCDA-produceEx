class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :markets
  has_many :products, through: :markets


 def self.search(search)
  		where("name LIKE ? OR city LIKE ? OR zipcode LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	end

def full_street_address
	[street_address, city, state, zipcode].compact.join(', ')
end
 
	geocoded_by :full_street_address
	after_validation :geocode
end
