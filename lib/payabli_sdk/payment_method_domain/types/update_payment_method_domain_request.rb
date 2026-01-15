# frozen_string_literal: true

module PayabliSdk
  module PaymentMethodDomain
    module Types
      class UpdatePaymentMethodDomainRequest < Internal::Types::Model
        field :domain_id, -> { String }, optional: false, nullable: false, api_name: "domainId"
        field :apple_pay, -> { PayabliSdk::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequestWallet }, optional: true, nullable: false, api_name: "applePay"
        field :google_pay, -> { PayabliSdk::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequestWallet }, optional: true, nullable: false, api_name: "googlePay"
      end
    end
  end
end
