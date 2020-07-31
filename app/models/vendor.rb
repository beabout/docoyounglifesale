class Vendor < ApplicationRecord
  # add slug friendly 
  has_many :products, dependent: :destroy 
  has_many :links, dependent: :destroy 
  
  has_one_attached :avatar

  validates :email, presence: true
  after_create_commit :send_welcome_email
  

  def full_name 
    "#{first_name} #{last_name}"
  end

  def display_name
    company_name ? company_name : full_name 
  end

  def product_types_list
    products.map(&:product_type).compact
  end

  private 

  def send_welcome_email
    VendorMailer.welcome(vendor: self).deliver 
  end

end
