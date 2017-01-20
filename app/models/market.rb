class Market < ApplicationRecord
  belongs_to :seller
  belongs_to :product

  VALID_DATE_FORMAT = /\d{2}\/\d{2}\/\d{4}/

  validates :description, presence: true, length: { maximum: 100 }
  validates :price, presence: true
  validates :price_description, presence: true
  validates :harvest_date, presence: true, format: { with: VALID_DATE_FORMAT }
  validates :harvest_location, presence: true

end
