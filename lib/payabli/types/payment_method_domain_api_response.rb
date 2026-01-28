# frozen_string_literal: true

module Payabli
  module Types
    # Data related to the payment method domain.
    class PaymentMethodDomainApiResponse < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: true
      field :apple_pay, -> { Payabli::Types::ApplePayData }, optional: false, nullable: false, api_name: "applePay"
      field :google_pay, -> { Payabli::Types::GooglePayData }, optional: false, nullable: false, api_name: "googlePay"
      field :cascades, -> { Internal::Types::Array[Payabli::Types::CascadeJobDetails] }, optional: true, nullable: false
      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
      field :domain_name, -> { String }, optional: false, nullable: false, api_name: "domainName"
      field :entity_id, -> { Integer }, optional: false, nullable: false, api_name: "entityId"
      field :entity_type, -> { String }, optional: false, nullable: false, api_name: "entityType"
      field :id, -> { String }, optional: false, nullable: false
      field :owner_entity_id, -> { Integer }, optional: false, nullable: false, api_name: "ownerEntityId"
      field :owner_entity_type, -> { String }, optional: false, nullable: false, api_name: "ownerEntityType"
      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
