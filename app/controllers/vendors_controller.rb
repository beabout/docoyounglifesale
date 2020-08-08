class VendorsController < ApplicationController
  before_action :load_vendor, only: [:product_inquiry]

  def index
    @vendors = Vendor.all
  end

  private 

  def load_vendor
    @vendor = Vendor.find(params[:id])
  end
end
