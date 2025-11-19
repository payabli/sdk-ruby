# frozen_string_literal: true

module Payabli
  module Types
    class ContactElement < Internal::Types::Model
      field :email_label, -> { String }, optional: true, nullable: false, api_name: "emailLabel"
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :header, -> { String }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
      field :payment_icons, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "paymentIcons"
      field :phone_label, -> { String }, optional: true, nullable: false, api_name: "phoneLabel"
    end
  end
end
