# frozen_string_literal: true

module Payabli
  module Invoice
    module Types
      class SendInvoiceRequest < Internal::Types::Model
        field :id_invoice, -> { Integer }, optional: false, nullable: false, api_name: "idInvoice"
        field :attachfile, -> { Internal::Types::Boolean }, optional: true, nullable: false
        field :mail_2, -> { String }, optional: true, nullable: false, api_name: "mail2"
      end
    end
  end
end
