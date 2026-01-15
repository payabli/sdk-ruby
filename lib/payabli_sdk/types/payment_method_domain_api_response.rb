# frozen_string_literal: true

module PayabliSdk
  module Types
    # Data related to the payment method domain.
    class PaymentMethodDomainApiResponse < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: true
      field :apple_pay, -> { PayabliSdk::Types::ApplePayData }, optional: false, nullable: false, api_name: "applePay"
      field :google_pay, -> { PayabliSdk::Types::GooglePayData }, optional: false, nullable: false, api_name: "googlePay"
      field :cascades, -> { Internal::Types::Array[PayabliSdk::Types::CascadeJobDetails] }, optional: true, nullable: false
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
