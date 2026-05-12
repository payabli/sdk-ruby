# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # A virtual card transaction record returned by the query.
      class VCardTransactionRecord < Internal::Types::Model
        field :identifier, -> { String }, optional: false, nullable: true, api_name: "Identifier"
        field :card_token, -> { String }, optional: false, nullable: true, api_name: "CardToken"
        field :last_four, -> { String }, optional: false, nullable: true, api_name: "LastFour"
        field :expiration_date, -> { String }, optional: false, nullable: true, api_name: "ExpirationDate"
        field :mcc, -> { String }, optional: false, nullable: true, api_name: "Mcc"
        field :payout_id, -> { Integer }, optional: false, nullable: true, api_name: "PayoutId"
        field :customer_id, -> { Integer }, optional: false, nullable: true, api_name: "CustomerId"
        field :vendor_id, -> { Integer }, optional: false, nullable: true, api_name: "VendorId"
        field :misc_data_1, -> { String }, optional: false, nullable: true, api_name: "MiscData1"
        field :misc_data_2, -> { String }, optional: false, nullable: true, api_name: "MiscData2"
        field :current_uses, -> { Integer }, optional: false, nullable: true, api_name: "CurrentUses"
        field :amount, -> { Integer }, optional: false, nullable: true, api_name: "Amount"
        field :balance, -> { Integer }, optional: false, nullable: true, api_name: "Balance"
        field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "PaypointId"
        field :paypoint_legal, -> { String }, optional: false, nullable: true, api_name: "PaypointLegal"
        field :paypoint_dba, -> { String }, optional: false, nullable: true, api_name: "PaypointDba"
        field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "ExternalPaypointID"
        field :org_name, -> { String }, optional: false, nullable: true, api_name: "OrgName"
        field :type, -> { String }, optional: false, nullable: true, api_name: "Type"
        field :status, -> { String }, optional: false, nullable: true, api_name: "Status"
        field :created_on, -> { String }, optional: false, nullable: true, api_name: "CreatedOn"
        field :transaction_amount, -> { String }, optional: false, nullable: true, api_name: "TransactionAmount"
        field :posted_amount, -> { String }, optional: false, nullable: true, api_name: "PostedAmount"
        field :posted_on, -> { String }, optional: false, nullable: true, api_name: "PostedOn"
        field :merchant_name, -> { String }, optional: false, nullable: true, api_name: "MerchantName"
        field :authorization_status, -> { String }, optional: false, nullable: true, api_name: "AuthorizationStatus"
        field :reason_to_decline, -> { String }, optional: false, nullable: true, api_name: "ReasonToDecline"
      end
    end
  end
end
