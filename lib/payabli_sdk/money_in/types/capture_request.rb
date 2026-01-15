# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      class CaptureRequest < Internal::Types::Model
        field :payment_details, -> { PayabliSdk::MoneyIn::Types::CapturePaymentDetails }, optional: false, nullable: false, api_name: "paymentDetails"
      end
    end
  end
end
