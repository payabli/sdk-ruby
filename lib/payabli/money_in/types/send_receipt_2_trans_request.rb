# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class SendReceipt2TransRequest < Internal::Types::Model
        field :trans_id, -> { String }, optional: false, nullable: false, api_name: "transId"
        field :email, -> { String }, optional: true, nullable: false
      end
    end
  end
end
