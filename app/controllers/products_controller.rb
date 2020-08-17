class ProductsController < ApplicationController
  before_action :load_vendor, only: [:index]

  def index
    @products = @vendor.products
    @message = Message.new
  end

  def donated_items
    # Set size for these products based on image width ('square', 'wide')
    @vendor = Vendor.friendly.find('donated-items')
    @products = @vendor.products.where(size: ['square', 'wide']).order(size: :desc)
    @list_products = @vendor.products.where.not(size: ['square', 'wide']).order(name: :desc)
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