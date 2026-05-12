# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class CapturePaymentDetails < Internal::Types::Model
        field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
        field :service_fee, -> { Integer }, optional: true, nullable: false, api_name: "serviceFee"
      end
    end
  end
end
