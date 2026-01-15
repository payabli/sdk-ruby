# frozen_string_literal: true

module PayabliSdk
  module Types
    class CustomerQueryRecordsCustomerConsent < Internal::Types::Model
      field :e_communication, -> { PayabliSdk::Types::CustomerQueryRecordsCustomerConsentECommunication }, optional: true, nullable: false, api_name: "eCommunication"
      field :sms, -> { PayabliSdk::Types::CustomerQueryRecordsCustomerConsentSms }, optional: true, nullable: false
    end
  end
end
