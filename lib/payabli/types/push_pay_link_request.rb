# frozen_string_literal: true

module Payabli
  module Types
    # Request body for the push paylink operation.
    class PushPayLinkRequest < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      discriminant :channel

      member -> { Payabli::Types::PushPayLinkRequestEmail }, key: "EMAIL"
      member -> { Payabli::Types::PushPayLinkRequestSms }, key: "SMS"
    end
  end
end
