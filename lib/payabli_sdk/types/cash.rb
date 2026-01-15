# frozen_string_literal: true

module PayabliSdk
  module Types
    class Cash < Internal::Types::Model
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
    end
  end
end
