# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class RequestOutAuthorize < Internal::Types::Model
        field :allow_duplicated_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowDuplicatedBills"

        field :do_not_create_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "doNotCreateBills"

        field :same_day_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sameDayACH"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :body, -> { Payabli::Types::AuthorizePayoutBody }, optional: false, nullable: false
      end
    end
  end
end
