# frozen_string_literal: true

module Payabli
  module Funding
    module Types
      class DepositFundsRequest < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :entrypoint, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false, api_name: "accountId"

        field :paypoint_id, -> { Integer }, optional: true, nullable: false, api_name: "paypointId"

        field :same_day_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sameDayAch"
      end
    end
  end
end
