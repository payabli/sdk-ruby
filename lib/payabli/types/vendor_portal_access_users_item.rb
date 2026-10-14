# frozen_string_literal: true

module Payabli
  module Types
    class VendorPortalAccessUsersItem < Internal::Types::Model
      field :user_id, -> { Integer }, optional: true, nullable: false, api_name: "UserId"

      field :email, -> { String }, optional: true, nullable: false, api_name: "Email"

      field :name, -> { String }, optional: true, nullable: false, api_name: "Name"

      field :phone, -> { String }, optional: true, nullable: false, api_name: "Phone"
    end
  end
end
