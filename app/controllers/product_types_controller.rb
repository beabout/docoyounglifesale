class ProductTypesController < ApplicationController
  before_action :load_products, only: [:show]

  def show
    @donated_items_vendor = Vendor.friendly.find('donated-items')
    @products = Product.where.not(vendor: @donated_items_vendor).by_type(@product_type)
  end

  def index
    @product_types = ProductType.all
    @donated_items_vendor = Vendor.friendly.find('donated-items')
  end

  private 

  def load_products   
    @product_type = ProductType.friendly.find(params[:id])
  end
end
