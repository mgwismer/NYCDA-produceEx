class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :markets
  has_many :reviews
  has_many :products, through: :markets
  has_many :buyers, through: :reviews

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

 def self.search(search)
  		where("name LIKE ? OR city LIKE ? OR zipcode LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	end

def full_street_address
	[street_address, city, state, zipcode].compact.join(', ')
end
 
	geocoded_by :full_street_address
	after_validation :geocode
end
