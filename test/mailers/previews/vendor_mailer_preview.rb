class VendorMailerPreview < ActionMailer::Preview
  
  def welcome
    vendor = Vendor.first 
    VendorMailer.welcome(vendor: vendor)
  end

  def product_interest
    VendorMailer.product_interest(Product.first, 'default@gmail.com', 'this is so cool')
  end
end