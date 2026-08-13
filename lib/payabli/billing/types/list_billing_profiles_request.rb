# frozen_string_literal: true

module Payabli
  module Billing
    module Types
      class ListBillingProfilesRequest < Internal::Types::Model
        field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"

        field :profile_name, -> { String }, optional: true, nullable: false, api_name: "profileName"

        field :fee_type, -> { Integer }, optional: true, nullable: false, api_name: "feeType"

        field :service_vertical, -> { Integer }, optional: true, nullable: false, api_name: "serviceVertical"

        field :profile_id, -> { Integer }, optional: true, nullable: false, api_name: "profileId"

        field :limit_record, -> { Integer }, optional: true, nullable: false, api_name: "limitRecord"

        field :from_record, -> { Integer }, optional: true, nullable: false, api_name: "fromRecord"
      end
    end
  end
end
