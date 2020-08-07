class VendorMailerPreview < ActionMailer::Preview
  
  def welcome
    vendor = Vendor.first 
    VendorMailer.welcome(vendor: vendor)
  end

  def product_interest
    vendor = Vendor.first
    VendorMailer.product_interest(customer_email: 'default@gmail.com', product: Product.first)
  end
end