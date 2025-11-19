# frozen_string_literal: true

module Payabli
  module User
    module Types
      class DeleteUserResponse < Internal::Types::Model
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
