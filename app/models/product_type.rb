class ProductType < ApplicationRecord
  extend FriendlyId
  
  has_many :products
  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: true 
end