class ProductsController < ApplicationController
  before_action :load_vendor, only: [:index]
  before_action :load_product, only: [:show]

  def index
    @products = @vendor.products
  end
  
  def show
    
  end

  private 

  def load_product
    @product = Product.find(params[:id])
  end

  def load_vendor
    @vendor = Vendor.find(params[:vendor_id])
  end
end
0