class Vendor < ApplicationRecord
  extend FriendlyId
  
  has_many :products, dependent: :destroy 
  has_many :links, dependent: :destroy 
  has_one_attached :avatar
  friendly_id :company_name, use: :slugged

  validates :email, presence: true, uniqueness: true
  validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Use 123-555-4444 formatting" }, allow_blank: true
  validate :name_or_company_name_are_present
  after_create_commit :send_welcome_email
  

  def full_name 
    "#{first_name} #{last_name}"
  end

  def display_name
    company_name.present? ? company_name : full_name 
  end

  def product_types_list
    products.map(&:product_type).compact.uniq
  end

  private 

  def send_welcome_email
    VendorMailer.welcome(vendor: self).deliver_later
  end

  def name_or_company_name_are_present
    if company_name.blank? && (first_name.blank? && last_name.blank?)
      errors.add(:company_name, "Must add either a company name or first and last name.") if company_name.blank? 
      errors.add(:first_name, "Must add either a company name or first and last name.") if first_name.blank? 
      errors.add(:last_name, "Must add either a company name or first and last name.") if last_name.blank? 
    end
  end
end
