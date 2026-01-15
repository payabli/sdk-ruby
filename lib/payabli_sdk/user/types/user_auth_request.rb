# frozen_string_literal: true

module PayabliSdk
  module User
    module Types
      class UserAuthRequest < Internal::Types::Model
        field :provider, -> { String }, optional: false, nullable: false
        field :email, -> { String }, optional: true, nullable: false
        field :entry, -> { String }, optional: true, nullable: false
        field :entry_type, -> { Integer }, optional: true, nullable: false, api_name: "entryType"
        field :psw, -> { String }, optional: true, nullable: false
        field :user_id, -> { Integer }, optional: true, nullable: false, api_name: "userId"
        field :user_token_id, -> { String }, optional: true, nullable: false, api_name: "userTokenId"
      end
    end
  end
end
