# frozen_string_literal: true

module PayabliSdk
  module Types
    class UsrAccess < Internal::Types::Model
      field :role_label, -> { String }, optional: true, nullable: false, api_name: "roleLabel"
      field :role_value, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "roleValue"
    end
  end
end
