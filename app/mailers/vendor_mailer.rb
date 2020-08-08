class VendorMailer < ApplicationMailer
  include MailerConcerns 

  def product_interest(customer_email:, product:, note:, phone:)
    @customer_email = customer_email 
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