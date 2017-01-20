class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :markets
  has_many :reviews
  has_many :products, through: :markets
  has_many :buyers, through: :reviews
 def self.search(search)
  		where("name LIKE ? OR city LIKE ? OR zipcode LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	end

end
