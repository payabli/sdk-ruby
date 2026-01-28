# frozen_string_literal: true

module Payabli
  module User
    module Types
      class UserAuthPswResetRequest < Internal::Types::Model
        field :psw, -> { String }, optional: true, nullable: false
      end
    end
  end
end
