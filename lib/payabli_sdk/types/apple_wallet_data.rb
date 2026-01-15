# frozen_string_literal: true

module PayabliSdk
  module Types
    # The wallet data.
    class AppleWalletData < Internal::Types::Model
      field :entry, -> { String }, optional: true, nullable: false
      field :apple_pay_merchant_id, -> { String }, optional: true, nullable: false, api_name: "applePayMerchantId"
      field :domain_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "domainNames"
      field :paypoint_name, -> { String }, optional: true, nullable: false, api_name: "paypointName"
      field :paypoint_url, -> { String }, optional: true, nullable: false, api_name: "paypointUrl"
      field :marked_for_deletion_at, -> { String }, optional: true, nullable: false, api_name: "markedForDeletionAt"
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
      field :id, -> { String }, optional: true, nullable: false
      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
