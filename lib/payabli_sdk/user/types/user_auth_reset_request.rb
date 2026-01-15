# frozen_string_literal: true

module PayabliSdk
  module User
    module Types
      class UserAuthResetRequest < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false
        field :entry, -> { String }, optional: true, nullable: false
        field :entry_type, -> { Integer }, optional: true, nullable: false, api_name: "entryType"
      end
    end
  end
end
