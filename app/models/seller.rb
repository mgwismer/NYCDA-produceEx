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

end
