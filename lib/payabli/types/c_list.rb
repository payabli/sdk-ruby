# frozen_string_literal: true

module Payabli
  module Types
    class CList < Internal::Types::Model
      field :contact_email, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "contactEmail"
      field :contact_name, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "contactName"
      field :contact_phone, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "contactPhone"
      field :contact_title, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "contactTitle"
    end
  end
end
