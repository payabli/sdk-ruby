# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    module Types
      class UpdatePaymentMethodDomainRequest < Internal::Types::Model
        field :domain_id, -> { String }, optional: false, nullable: false, api_name: "domainId"
        field :apple_pay, -> { Payabli::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequestWallet }, optional: true, nullable: false, api_name: "applePay"
        field :google_pay, -> { Payabli::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequestWallet }, optional: true, nullable: false, api_name: "googlePay"
      end
    end
  end
end
