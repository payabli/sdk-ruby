# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryPayoutTransactionSummary < Internal::Types::Model
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"
      field :total_authorized, -> { Integer }, optional: true, nullable: false, api_name: "totalAuthorized"
      field :total_authorized_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAuthorizedAmount"
      field :total_canceled, -> { Integer }, optional: true, nullable: false, api_name: "totalCanceled"
      field :total_canceled_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalCanceledAmount"
      field :total_captured, -> { Integer }, optional: true, nullable: false, api_name: "totalCaptured"
      field :total_captured_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalCapturedAmount"
      field :total_net_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalNetAmount"
      field :total_open, -> { Integer }, optional: true, nullable: false, api_name: "totalOpen"
      field :total_open_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalOpenAmount"
      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"
      field :total_paid, -> { Integer }, optional: true, nullable: false, api_name: "totalPaid"
      field :total_paid_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalPaidAmount"
      field :total_on_hold, -> { Integer }, optional: true, nullable: false, api_name: "totalOnHold"
      field :total_on_hold_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalOnHoldAmount"
      field :total_processing, -> { Integer }, optional: true, nullable: false, api_name: "totalProcessing"
      field :total_processing_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalProcessingAmount"
      field :total_records, -> { Integer }, optional: true, nullable: false, api_name: "totalRecords"
    end
  end
end
