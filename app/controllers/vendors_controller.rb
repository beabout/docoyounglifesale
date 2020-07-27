class VendorsController < ApplicationController
  before_action :load_vendor, only: [:show]

  def index
    @vendors = Vendor.all    
  end
  
  def show
    
  end

  private 

  def load_vendor
    @vendor = Vendor.find(params[:id])
  end
end
