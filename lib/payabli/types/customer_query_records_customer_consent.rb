# frozen_string_literal: true

module Payabli
  module Types
    class CustomerQueryRecordsCustomerConsent < Internal::Types::Model
      field :e_communication, lambda {
        Payabli::Types::CustomerQueryRecordsCustomerConsentECommunication
      }, optional: true, nullable: false, api_name: "eCommunication"
      field :sms, -> { Payabli::Types::CustomerQueryRecordsCustomerConsentSms }, optional: true, nullable: false
    end
  end
end
