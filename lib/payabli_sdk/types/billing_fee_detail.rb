# frozen_string_literal: true

module PayabliSdk
  module Types
    class BillingFeeDetail < Internal::Types::Model
      field :billable_event, -> { String }, optional: true, nullable: false, api_name: "billableEvent"
      field :service, -> { String }, optional: true, nullable: false
      field :event_id, -> { String }, optional: true, nullable: false, api_name: "eventId"
      field :description, -> { String }, optional: true, nullable: false
      field :category, -> { String }, optional: true, nullable: false
      field :fix_price, -> { Integer }, optional: true, nullable: false, api_name: "fixPrice"
      field :float_price, -> { Integer }, optional: true, nullable: false, api_name: "floatPrice"
      field :billable_amount, -> { Integer }, optional: true, nullable: false, api_name: "billableAmount"
      field :bill_amount, -> { Integer }, optional: true, nullable: false, api_name: "billAmount"
      field :frequency, -> { String }, optional: true, nullable: false
      field :service_group, -> { String }, optional: true, nullable: false, api_name: "serviceGroup"
    end
  end
end
