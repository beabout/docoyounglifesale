class VendorMailer < ApplicationMailer
  include MailerConcerns 

  def product_interest(customer_email:, product:, message:)
    @customer_email = customer_email 
    @product = product
    @vendor = @product.vendor
    mail(to: @vendor.email, subject: "You have a customer waiting!")
  end

  def welcome(vendor:)
    @vendor = vendor 
    mail(to: @vendor.email, subject: "Welcome to the Fall Sale!")
  end
end