# frozen_string_literal: true

module PayabliSdk
  module User
    module Types
      class GetUserRequest < Internal::Types::Model
        field :user_id, -> { Integer }, optional: false, nullable: false, api_name: "userId"
        field :entry, -> { String }, optional: true, nullable: false
        field :level, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
