# frozen_string_literal: true

module PayabliSdk
  module Paypoint
    module Types
      class GetEntryConfigRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :entrypages, -> { String }, optional: true, nullable: false
      end
    end
  end
end
