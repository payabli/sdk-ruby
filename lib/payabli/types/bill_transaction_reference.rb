# frozen_string_literal: true

module Payabli
  module Types
    # Identifies a payout transaction that paid a bill.
    class BillTransactionReference < Internal::Types::Model
      field :id_out, -> { Integer }, optional: false, nullable: false, api_name: "idOut"

      field :payment_id, -> { String }, optional: false, nullable: true, api_name: "paymentId"
    end
  end
end
