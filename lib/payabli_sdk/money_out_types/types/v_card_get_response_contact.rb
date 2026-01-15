# frozen_string_literal: true

module PayabliSdk
  module MoneyOutTypes
    module Types
      # Contact information structure.
      class VCardGetResponseContact < Internal::Types::Model
        field :contact_name, -> { String }, optional: true, nullable: false, api_name: "ContactName"
        field :contact_email, -> { String }, optional: true, nullable: false, api_name: "ContactEmail"
        field :contact_title, -> { String }, optional: true, nullable: false, api_name: "ContactTitle"
        field :contact_phone, -> { String }, optional: true, nullable: false, api_name: "ContactPhone"
      end
    end
  end
end
