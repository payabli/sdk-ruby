# frozen_string_literal: true

module PayabliSdk
  module Types
    class ContactsResponse < Internal::Types::Model
      field :contact_email, -> { String }, optional: true, nullable: false, api_name: "ContactEmail"
      field :contact_name, -> { String }, optional: true, nullable: false, api_name: "ContactName"
      field :contact_phone, -> { String }, optional: true, nullable: false, api_name: "ContactPhone"
      field :contact_title, -> { String }, optional: true, nullable: false, api_name: "ContactTitle"
    end
  end
end
