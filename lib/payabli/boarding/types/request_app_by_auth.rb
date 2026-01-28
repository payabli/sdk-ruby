# frozen_string_literal: true

module Payabli
  module Boarding
    module Types
      class RequestAppByAuth < Internal::Types::Model
        field :x_id, -> { String }, optional: false, nullable: false, api_name: "xId"
        field :email, -> { String }, optional: true, nullable: false
        field :reference_id, -> { String }, optional: true, nullable: false, api_name: "referenceId"
      end
    end
  end
end
