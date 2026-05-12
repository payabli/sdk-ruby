# frozen_string_literal: true

module Payabli
  module ChargeBacks
    module Types
      class ChargeBackResponse < Internal::Types::Model
        field :attachments, -> { Payabli::Types::BoardingApplicationAttachments }, optional: true, nullable: false
        field :contact_email, -> { String }, optional: true, nullable: false, api_name: "contactEmail"
        field :contact_name, -> { String }, optional: true, nullable: false, api_name: "contactName"
        field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
        field :id, -> { Integer }, optional: true, nullable: false
        field :notes, -> { String }, optional: true, nullable: false
      end
    end
  end
end
