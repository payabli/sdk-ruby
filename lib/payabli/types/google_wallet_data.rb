# frozen_string_literal: true

module Payabli
  module Types
    # The wallet data.
    class GoogleWalletData < Internal::Types::Model
      field :gateway_merchant_id, -> { String }, optional: true, nullable: false, api_name: "gatewayMerchantId"
      field :gateway_id, -> { String }, optional: true, nullable: false, api_name: "gatewayId"
    end
  end
end
