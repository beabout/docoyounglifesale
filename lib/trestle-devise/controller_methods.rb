module Trestle
  module Auth
    module ControllerMethods
      extend ActiveSupport::Concern

      included do
        before_action :authenticate_user!
        before_action :require_admin!
      end

      protected

      def require_admin!
        redirect_to root_url, alert: "You must be an admin to access that area" unless current_user.admin?
      end
    end
  end
end