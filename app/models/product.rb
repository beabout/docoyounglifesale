class Product < ApplicationRecord
  belongs_to :vendor 

  validates :name, presence: true
  # type ( clothing, )
  # size ( 'small' )

  def attributes_list
    ['Tops', 'For Women']
  end

end