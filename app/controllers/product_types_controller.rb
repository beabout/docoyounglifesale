class ProductTypesController < ApplicationController
  before_action :load_products, only: [:show]

  def show
  end

  def index
    @product_types = ProductType.all
  end

  private 

  def load_products   
    @product_type = ProductType.friendly.find(params[:id])
    @products = Product.where.not(vendor: Vendor.friendly.find('donated-items')).by_type(@product_type)
  end
end
