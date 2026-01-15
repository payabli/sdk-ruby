# frozen_string_literal: true

module PayabliSdk
  module Types
    class VCardQueryResponse < Internal::Types::Model
      field :summary, -> { PayabliSdk::Types::VCardSummary }, optional: true, nullable: false, api_name: "Summary"
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::VCardRecord] }, optional: true, nullable: false, api_name: "Records"
    end
  end
end
