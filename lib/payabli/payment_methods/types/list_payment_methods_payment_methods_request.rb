# frozen_string_literal: true

module Payabli
  module PaymentMethods
    module Types
      class ListPaymentMethodsPaymentMethodsRequest < Internal::Types::Model
        field :account_owner, -> { String }, optional: true, nullable: false, api_name: "accountOwner"

        field :owner_type, -> { Payabli::Types::PaymentMethodOwnerType }, optional: true, nullable: false, api_name: "ownerType"

        field :status, -> { String }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :sort_by, -> { String }, optional: true, nullable: false, api_name: "sortBy"

        field :sort_order, -> { String }, optional: true, nullable: false, api_name: "sortOrder"
      end
    end
  end
end
