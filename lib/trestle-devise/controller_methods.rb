module Trestle
  module Auth
    module ControllerMethods
      extend ActiveSupport::Concern

      included do
        before_action :authenticate_user!
      end

      protected

    end
  end
end