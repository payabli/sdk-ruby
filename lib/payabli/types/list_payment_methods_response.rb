# frozen_string_literal: true

module Payabli
  module Types
    # A page of payment methods.
    class ListPaymentMethodsResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[Payabli::Types::PaymentMethodDetail] }, optional: false, nullable: true

      field :pagination, -> { Payabli::Types::Pagination }, optional: false, nullable: true
    end
  end
end
