# frozen_string_literal: true

module PayabliSdk
  module Types
    # Request body for the push paylink operation.
    class PushPayLinkRequest < Internal::Types::Model
      extend PayabliSdk::Internal::Types::Union

      discriminant :channel

      member -> { PayabliSdk::Types::PushPayLinkRequestEmail }, key: "EMAIL"
      member -> { PayabliSdk::Types::PushPayLinkRequestSms }, key: "SMS"
    end
  end
end
