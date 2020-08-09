class Message < ApplicationRecord
  belongs_to :product

  
  validate :email_or_phone_is_present

  private 

  def email_or_phone_is_present
    if email.blank? && phone_number.blank?
      errors.add(:email, "Must add either an email or a phone number.") if email.blank? 
      errors.add(:phone_number, "Must add either an email or a phone number.") if phone_number.blank? 
    end
  end
end