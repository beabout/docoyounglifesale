class ProductTypesController < ApplicationController
  before_action :load_products, only: [:show]

  def show
  end

  private 

  def load_products   
    @product_type = ProductType.find(params[:id])
    @products = Product.by_type(@product_type)
  end
end
