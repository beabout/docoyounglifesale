class Vendor < ApplicationRecord
  # add slug friendly 
  has_many :products
  # has_many :interests 
  

  def full_name 
    "#{first_name} #{last_name}"
  end

  def display_name
    company_name ? company_name : full_name 
  end
end
