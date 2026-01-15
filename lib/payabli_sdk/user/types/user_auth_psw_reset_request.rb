# frozen_string_literal: true

module PayabliSdk
  module User
    module Types
      class UserAuthPswResetRequest < Internal::Types::Model
        field :psw, -> { String }, optional: true, nullable: false
      end
    end
  end
end
