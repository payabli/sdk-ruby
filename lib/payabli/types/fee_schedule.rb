# frozen_string_literal: true

module Payabli
  module Types
    # A fee schedule attached to a billable event. Flat and interchange-plus
    # schedules share this shape; `feeType` is the discriminator.
    class FeeSchedule < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false

      field :rate, -> { Integer }, optional: false, nullable: false

      field :passthrough, -> { Integer }, optional: false, nullable: false

      field :payor, -> { Payabli::Types::BillingEntity }, optional: false, nullable: true

      field :collector, -> { Payabli::Types::BillingEntity }, optional: false, nullable: true

      field :overflow_payor, -> { Payabli::Types::BillingEntity }, optional: false, nullable: true, api_name: "overflowPayor"

      field :overflow_collection_schedule, -> { Integer }, optional: false, nullable: true, api_name: "overflowCollectionSchedule"

      field :minimum_total, -> { Integer }, optional: false, nullable: true, api_name: "minimumTotal"

      field :maximum_total, -> { Integer }, optional: false, nullable: true, api_name: "maximumTotal"

      field :effective_date, -> { String }, optional: false, nullable: false, api_name: "effectiveDate"

      field :expiration_date, -> { String }, optional: false, nullable: true, api_name: "expirationDate"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :created_by, -> { String }, optional: false, nullable: false, api_name: "createdBy"

      field :collection_schedule, -> { Integer }, optional: false, nullable: false, api_name: "collectionSchedule"

      field :bill_date, -> { Integer }, optional: false, nullable: true, api_name: "billDate"

      field :override_fee_schedule_id, -> { Integer }, optional: false, nullable: true, api_name: "overrideFeeScheduleId"

      field :fee_type, -> { Integer }, optional: false, nullable: false, api_name: "feeType"
    end
  end
end
