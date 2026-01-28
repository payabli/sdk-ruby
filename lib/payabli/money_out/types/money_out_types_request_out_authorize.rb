# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class MoneyOutTypesRequestOutAuthorize < Internal::Types::Model
        field :allow_duplicated_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowDuplicatedBills"
        field :do_not_create_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "doNotCreateBills"
        field :force_vendor_creation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceVendorCreation"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::MoneyOutTypes::Types::AuthorizePayoutBody }, optional: false, nullable: false
      end
    end
  end
end
