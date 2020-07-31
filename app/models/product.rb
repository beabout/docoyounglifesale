class Product < ApplicationRecord
  belongs_to :vendor 
  belongs_to :product_type
  has_one_attached :image

  validates :name, presence: true
  # type ( clothing, )
  # size ( 'small' )

  def attributes_list
    ['Tops', 'For Women']
  end

end