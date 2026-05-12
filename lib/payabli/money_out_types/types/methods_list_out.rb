# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      # Payment methods available for Pay Out payment links. Controls which payout options are offered to the vendor.
      class MethodsListOut < Internal::Types::Model
        field :ach, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :check, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :vcard, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
