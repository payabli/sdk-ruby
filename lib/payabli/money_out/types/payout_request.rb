# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class PayoutRequest < Internal::Types::Model
        field :same_day_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sameDayACH"

        field :do_not_create_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "doNotCreateBills"

        field :allow_duplicated_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowDuplicatedBills"

        field :update_vendor_payment_method, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "updateVendorPaymentMethod"

        field :auto_convert_same_day_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "autoConvertSameDayAch"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :body, -> { Payabli::Types::AuthorizePayoutBody }, optional: false, nullable: false
      end
    end
  end
end
