# frozen_string_literal: true

module Payabli
  module Types
    class VendorSummary < Internal::Types::Model
      field :active_bills, -> { Integer }, optional: true, nullable: false, api_name: "ActiveBills"
      field :pending_bills, -> { Integer }, optional: true, nullable: false, api_name: "PendingBills"
      field :in_transit_bills, -> { Integer }, optional: true, nullable: false, api_name: "InTransitBills"
      field :paid_bills, -> { Integer }, optional: true, nullable: false, api_name: "PaidBills"
      field :overdue_bills, -> { Integer }, optional: true, nullable: false, api_name: "OverdueBills"
      field :approved_bills, -> { Integer }, optional: true, nullable: false, api_name: "ApprovedBills"
      field :disapproved_bills, -> { Integer }, optional: true, nullable: false, api_name: "DisapprovedBills"
      field :total_bills, -> { Integer }, optional: true, nullable: false, api_name: "TotalBills"
      field :active_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "ActiveBillsAmount"
      field :pending_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "PendingBillsAmount"
      field :in_transit_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "InTransitBillsAmount"
      field :paid_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "PaidBillsAmount"
      field :overdue_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "OverdueBillsAmount"
      field :approved_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "ApprovedBillsAmount"
      field :disapproved_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "DisapprovedBillsAmount"
      field :total_bills_amount, -> { Integer }, optional: true, nullable: false, api_name: "TotalBillsAmount"
    end
  end
end
