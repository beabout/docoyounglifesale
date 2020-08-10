class Product < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  belongs_to :vendor 
  belongs_to :product_type
  has_one_attached :image

  validates :name, presence: true
  
  scope :by_type, ->(p){ where(product_type: p)}

  def product_to_human
    p = ""
    p += name if name 
    p += " | #{size}" if size 
    p += " | #{number_to_currency(cost)}" if cost 
    p 
  end

  def attributes_list
    ['Tops', 'For Women']
  end

end