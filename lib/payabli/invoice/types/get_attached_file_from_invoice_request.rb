# frozen_string_literal: true

module Payabli
  module Invoice
    module Types
      class GetAttachedFileFromInvoiceRequest < Internal::Types::Model
        field :id_invoice, -> { Integer }, optional: false, nullable: false, api_name: "idInvoice"
        field :filename, -> { String }, optional: false, nullable: false
        field :return_object, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "returnObject"
      end
    end
  end
end
