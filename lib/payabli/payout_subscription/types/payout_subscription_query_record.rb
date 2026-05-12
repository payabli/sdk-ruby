# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class PayoutSubscriptionQueryRecord < Internal::Types::Model
        field :id_out_subscription, -> { Integer }, optional: true, nullable: false, api_name: "idOutSubscription"

        field :status, -> { Integer }, optional: true, nullable: false

        field :events, -> { Internal::Types::Array[Payabli::Types::GeneralEvents] }, optional: true, nullable: false

        field :vendor, -> { Payabli::Types::VendorQueryRecord }, optional: true, nullable: false

        field :bill_data, -> { Internal::Types::Array[Payabli::Types::BillPayOutData] }, optional: true, nullable: false, api_name: "billData"

        field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"

        field :method_, -> { String }, optional: true, nullable: false, api_name: "method"

        field :paypoint_id, -> { Integer }, optional: true, nullable: false, api_name: "paypointId"

        field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"

        field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "netAmount"

        field :fee_amount, -> { Integer }, optional: true, nullable: false, api_name: "feeAmount"

        field :payment_data, -> { Payabli::Types::QueryPaymentData }, optional: true, nullable: false, api_name: "paymentData"

        field :start_date, -> { String }, optional: false, nullable: true, api_name: "startDate"

        field :end_date, -> { String }, optional: false, nullable: true, api_name: "endDate"

        field :next_date, -> { String }, optional: false, nullable: true, api_name: "nextDate"

        field :frequency, -> { String }, optional: true, nullable: false

        field :total_cycles, -> { Integer }, optional: true, nullable: false, api_name: "totalCycles"

        field :left_cycles, -> { Integer }, optional: true, nullable: false, api_name: "leftCycles"

        field :last_run, -> { String }, optional: false, nullable: true, api_name: "lastRun"

        field :entrypage_id, -> { Integer }, optional: true, nullable: false, api_name: "entrypageId"

        field :until_cancelled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "untilCancelled"

        field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"

        field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

        field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "paypointLegalname"

        field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "paypointDbaname"

        field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "paypointEntryname"

        field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "parentOrgName"

        field :parent_org_id, -> { Integer }, optional: true, nullable: false, api_name: "parentOrgId"

        field :source, -> { String }, optional: true, nullable: false
      end
    end
  end
end
