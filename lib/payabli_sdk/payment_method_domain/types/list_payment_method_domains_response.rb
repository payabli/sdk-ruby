# frozen_string_literal: true

module PayabliSdk
  module PaymentMethodDomain
    module Types
      class ListPaymentMethodDomainsResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[PayabliSdk::Types::PaymentMethodDomainApiResponse] }, optional: false, nullable: false
        field :summary, -> { PayabliSdk::Types::QuerySummaryNoAmt }, optional: false, nullable: false
      end
    end
  end
end
