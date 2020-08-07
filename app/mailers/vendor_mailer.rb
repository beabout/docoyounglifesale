class VendorMailer < ActionMailer::Base
  include MailerConcerns 

  def product_interest(customer_email:, product:)
    @customer_email = customer_email 
    @product = product
    @vendor = @product.vendor
    premailer = generate_premailer('vendor_mailer/product_interest')
    mail({
      to: @vendor.email, 
      subject: "You have a customer waiting!"
    })
  end

  def welcome(vendor:)
    @vendor = vendor 
    premailer = generate_premailer('vendor_mailer/welcome')
    mail({
      to: @vendor.email, 
      subject: "Welcome to the Fall Sale!"
    })
  end
end