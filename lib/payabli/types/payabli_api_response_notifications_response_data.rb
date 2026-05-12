# frozen_string_literal: true

module Payabli
  module Types
    # When the request was successful, this contains the notification ID, or
    # `nID` used to manage the notification.
    class PayabliApiResponseNotificationsResponseData < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      member -> { Integer }
      member -> { String }
    end
  end
end
