class ProductsController < ApplicationController
  before_action :load_vendor, only: [:index]

  def index
    @products = @vendor.products
    @message = Message.new
  end

  private 

  def load_product
    @product = Product.friendly.find(params[:id])
  end

  def load_vendor
    @vendor = Vendor.friendly.find(params[:vendor_id])
  end
end