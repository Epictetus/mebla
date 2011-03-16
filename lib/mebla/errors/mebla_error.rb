# @private
module Mebla
  # @private
  module Errors
    # Default parent Mebla error for all custom non-fatal errors.
    class MeblaError < ::StandardError      
      def initialize(message)
        super message
        ::ActiveSupport::Notifications.
          instrument('mebla_error.mebla', :message => message)
      end
    end  
  end
end
