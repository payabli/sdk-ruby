# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      class VCardGetResponse < Internal::Types::Model
        field :vcard_sent, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "vcardSent"
        field :card_token, -> { String }, optional: true, nullable: false, api_name: "cardToken"
        field :card_number, -> { String }, optional: true, nullable: false, api_name: "cardNumber"
        field :cvc, -> { String }, optional: true, nullable: false
        field :expiration_date, -> { String }, optional: true, nullable: false, api_name: "expirationDate"
        field :status, -> { String }, optional: true, nullable: false
        field :amount, -> { Integer }, optional: true, nullable: false
        field :current_balance, -> { Integer }, optional: true, nullable: false, api_name: "currentBalance"
        field :expense_limit, -> { Integer }, optional: true, nullable: false, api_name: "expenseLimit"
        field :expense_limit_period, -> { String }, optional: true, nullable: false, api_name: "expenseLimitPeriod"
        field :max_number_of_uses, -> { Integer }, optional: true, nullable: false, api_name: "maxNumberOfUses"
        field :current_number_of_uses, -> { Integer }, optional: true, nullable: false, api_name: "currentNumberOfUses"
        field :exact_amount, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "exactAmount"
        field :mcc, -> { String }, optional: true, nullable: false
        field :tcc, -> { String }, optional: true, nullable: false
        field :misc_1, -> { String }, optional: true, nullable: false, api_name: "misc1"
        field :misc_2, -> { String }, optional: true, nullable: false, api_name: "misc2"
        field :date_created, -> { String }, optional: true, nullable: false, api_name: "dateCreated"
        field :date_modified, -> { String }, optional: true, nullable: false, api_name: "dateModified"
        field :associated_vendor, lambda {
          Payabli::MoneyOutTypes::Types::VCardGetResponseAssociatedVendor
        }, optional: true, nullable: false, api_name: "associatedVendor"
        field :associated_customer, -> { String }, optional: true, nullable: false, api_name: "associatedCustomer"
        field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
        field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
        field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
        field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
        field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
        field :paypoint_id, -> { Integer }, optional: true, nullable: false, api_name: "paypointId"
      end
    end
  end
end
