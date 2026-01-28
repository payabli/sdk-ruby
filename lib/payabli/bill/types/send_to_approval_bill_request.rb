# frozen_string_literal: true

module Payabli
  module Bill
    module Types
      class SendToApprovalBillRequest < Internal::Types::Model
        field :id_bill, -> { Integer }, optional: false, nullable: false, api_name: "idBill"
        field :autocreate_user, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "autocreateUser"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
