# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class CaptureRequest < Internal::Types::Model
        field :payment_details, -> { Payabli::MoneyIn::Types::CapturePaymentDetails }, optional: false, nullable: false, api_name: "paymentDetails"
      end
    end
  end
end
