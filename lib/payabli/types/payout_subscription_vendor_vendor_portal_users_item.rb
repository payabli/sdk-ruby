# frozen_string_literal: true

module Payabli
  module Types
    class PayoutSubscriptionVendorVendorPortalUsersItem < Internal::Types::Model
      field :user_id, -> { Integer }, optional: true, nullable: false, api_name: "userId"

      field :email, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :phone, -> { String }, optional: true, nullable: false
    end
  end
end
