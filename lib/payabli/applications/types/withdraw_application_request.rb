# frozen_string_literal: true

module Payabli
  module Applications
    module Types
      class WithdrawApplicationRequest < Internal::Types::Model
        field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"

        field :reason, -> { String }, optional: true, nullable: false
      end
    end
  end
end
