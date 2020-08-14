class Product < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  belongs_to :vendor 
  belongs_to :product_type
  has_one_attached :image

  validates :name, presence: true
  
  scope :by_type, ->(p){ where(product_type: p)}

  def product_to_human
    p = ""
    p += name if name.present?
    p += " | #{size}" if size.present?
    p += " | #{number_to_currency(cost)}" if cost.present?
    p 
  end

  def attributes_list
    ['Tops', 'For Women']
  end

end