# frozen_string_literal: true

module Payabli
  module Types
    class CaptureRequest < Internal::Types::Model
      field :payment_details, -> { Payabli::Types::CapturePaymentDetails }, optional: false, nullable: false, api_name: "paymentDetails"
    end
  end
end
