class MessagesController < ApplicationController
    before_action :load_product, only: [:create]

    def create
        email = params[:message][:email]
        note = params[:note] if params[:message][:note]
        phone = params[:phone_number] if params[:message][:phone_number]
        VendorMailer.product_interest(customer_email: email, product: @product, note: note, phone: phone).deliver_later
        flash[:notice] = "Thank you #{email}, the vendor has been notified of your interest."
    end

    private 

    def load_product
        @product = Product.find_by(id: params[:message][:product_id])
    end

    def message_params
        params.require(:message).permit(:email, :phone_number, :note, :product_id)
    end
end