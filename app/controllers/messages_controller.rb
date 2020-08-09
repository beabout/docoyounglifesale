class MessagesController < ApplicationController
  before_action :load_vendor, only: [:create]

  def create
    @message = Message.create(message_params)
    if @message.save

      VendorMailer.product_interest(@message.product, @message.email, @message.note, @message.phone_number).deliver_later
      redirect_to vendor_products_path(@vendor), notice: "Thank you #{@message.email}, we will send your message shortly."
    else
      redirect_to vendor_products_path(@vendor), alert: "<p>Please include a <strong>product</strong> as well as an <strong>email</strong> or <strong>phone</strong> to contact you.</p>"
    end
  end

  private 

  def load_vendor
    @vendor = Vendor.find(params[:message][:vendor_id])
  end

  def message_params
    params.require(:message).permit(:email, :phone_number, :note, :product_id)
  end
end
