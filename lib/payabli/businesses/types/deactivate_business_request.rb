# frozen_string_literal: true

module Payabli
  module Businesses
    module Types
      class DeactivateBusinessRequest < Internal::Types::Model
        field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

        field :reason, -> { String }, optional: true, nullable: false
      end
    end
  end
end
