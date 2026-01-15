# frozen_string_literal: true

module PayabliSdk
  module Types
    class CList < Internal::Types::Model
      field :contact_email, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "contactEmail"
      field :contact_name, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "contactName"
      field :contact_phone, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "contactPhone"
      field :contact_title, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "contactTitle"
    end
  end
end
