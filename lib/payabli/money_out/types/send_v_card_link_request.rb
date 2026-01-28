# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class SendVCardLinkRequest < Internal::Types::Model
        field :trans_id, -> { String }, optional: false, nullable: false, api_name: "transId"
      end
    end
  end
end
