# frozen_string_literal: true

module PayabliSdk
  module Types
    class PairFiles < Internal::Types::Model
      field :original_name, -> { String }, optional: true, nullable: false, api_name: "originalName"
      field :zip_name, -> { String }, optional: true, nullable: false, api_name: "zipName"
      field :descriptor, -> { String }, optional: true, nullable: false
    end
  end
end
