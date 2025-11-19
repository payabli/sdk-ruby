# frozen_string_literal: true

module Payabli
  module Bill
    module Types
      class DeleteAttachedFromBillRequest < Internal::Types::Model
        field :filename, -> { String }, optional: false, nullable: false
        field :id_bill, -> { Integer }, optional: false, nullable: false, api_name: "idBill"
        field :return_object, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "returnObject"
      end
    end
  end
end
