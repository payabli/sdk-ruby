# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    module Types
      class ListPaymentMethodDomainsResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[Payabli::Types::PaymentMethodDomainApiResponse] }, optional: false, nullable: false
        field :summary, -> { Payabli::Types::QuerySummaryNoAmt }, optional: false, nullable: false
      end
    end
  end
end
