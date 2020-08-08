class VendorsController < ApplicationController
  before_action :load_vendor, only: [:show, :product_inquiry]

  def index
    @vendors = Vendor.all    
  end
  
  def show    
  end

  def product_inquiry
    Rails.logger.warn params
    product = Product.find(params[:product_id])
    VendorMailer.product_interest(customer_email: params[:email], message: params[:message], product: product).deliver 
    head :no_content
  end

  private 

  def load_vendor
    @vendor = Vendor.find(params[:id])
  end
end
