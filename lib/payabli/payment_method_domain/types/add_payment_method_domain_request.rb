# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    module Types
      class AddPaymentMethodDomainRequest < Internal::Types::Model
        field :apple_pay, -> { Payabli::PaymentMethodDomain::Types::AddPaymentMethodDomainRequestApplePay }, optional: true, nullable: false, api_name: "applePay"
        field :google_pay, -> { Payabli::PaymentMethodDomain::Types::AddPaymentMethodDomainRequestGooglePay }, optional: true, nullable: false, api_name: "googlePay"
        field :domain_name, -> { String }, optional: true, nullable: false, api_name: "domainName"
        field :entity_id, -> { Integer }, optional: true, nullable: false, api_name: "entityId"
        field :entity_type, -> { String }, optional: true, nullable: false, api_name: "entityType"
      end
    end
  end
end
