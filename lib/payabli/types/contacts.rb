# frozen_string_literal: true

module Payabli
  module Types
    class Contacts < Internal::Types::Model
      field :contact_email, -> { String }, optional: true, nullable: false, api_name: "contactEmail"
      field :contact_name, -> { String }, optional: true, nullable: false, api_name: "contactName"
      field :contact_phone, -> { String }, optional: true, nullable: false, api_name: "contactPhone"
      field :contact_title, -> { String }, optional: true, nullable: false, api_name: "contactTitle"
      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
