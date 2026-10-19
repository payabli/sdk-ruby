# frozen_string_literal: true

module Payabli
  module Types
    # EMV data exchanged during the authorization of a device transaction. `null`
    # when both values are `null`, such as for swiped cards, device transactions
    # that never reached the processor, and non-device transactions.
    class EmvAuthData < Internal::Types::Model
      field :request_emv_data, -> { String }, optional: false, nullable: true, api_name: "RequestEmvData"

      field :response_emv_data, -> { String }, optional: false, nullable: true, api_name: "ResponseEmvData"
    end
  end
end
