# frozen_string_literal: true

module PayabliSdk
  module PaymentLink
    module Types
      class RefreshPayLinkFromIdRequest < Internal::Types::Model
        field :pay_link_id, -> { String }, optional: false, nullable: false, api_name: "payLinkId"
        field :amount_fixed, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "amountFixed"
      end
    end
  end
end
