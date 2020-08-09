class VendorMailer < ApplicationMailer
  include MailerConcerns 

  def product_interest(product, email, note = nil, phone = nil)
    @customer_email = email 
    @product = product
    @vendor = @product.vendor
    @note = note 
    @phone = phone 
    mail(to: @vendor.email, subject: "You have a customer waiting!")
  end

  def welcome(vendor:)
    @vendor = vendor 
    mail(to: @vendor.email, subject: "Welcome to the Sidewalk Sale!")
  end
end