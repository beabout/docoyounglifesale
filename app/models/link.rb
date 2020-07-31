class Link < ApplicationRecord
  belongs_to :vendor
  
  validates :site_name, presence: true
  validates :site_url, presence: true
  validates :vendor_id, presence: true 
end
