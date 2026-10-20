# frozen_string_literal: true

module Payabli
  module Applications
    module Types
      class SubmitApplicationRequest < Internal::Types::Model
        field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"

        field :signer, -> { Payabli::Types::SubmitSigner }, optional: false, nullable: false
      end
    end
  end
end
