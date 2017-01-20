class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews
  has_many :buyerproducts
  has_many :sellers, through: :reviews
  has_many :products, through: :buyerproducts
end
