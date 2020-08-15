class VendorsController < ApplicationController
  before_action :load_vendor, only: [:product_inquiry]

  def index
    @vendors = Vendor.all.order(company_name: :asc)
  end

  private 

  def load_vendor
    @vendor = Vendor.friendly.find(params[:id])
  end
end
