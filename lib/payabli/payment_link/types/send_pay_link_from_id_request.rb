# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      class SendPayLinkFromIdRequest < Internal::Types::Model
        field :pay_link_id, -> { String }, optional: false, nullable: false, api_name: "payLinkId"
        field :attachfile, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :mail_2, -> { String }, optional: true, nullable: false, api_name: "mail2"
      end
    end
  end
end
